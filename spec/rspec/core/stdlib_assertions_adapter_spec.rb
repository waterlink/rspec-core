require 'spec_helper'

require 'test/unit/assertions'
require 'rspec/core/stdlib_assertions_adapter'

describe RSpec::Core::StdlibAssertionsAdapter do
  it 'provides an assertions accessor for recent minitest compatibility' do
    group = Class.new do
      include RSpec::Core::StdlibAssertionsAdapter
    end.new
    group.assertions += 1
    expect(group.assertions).to eq(1)
  end
end
