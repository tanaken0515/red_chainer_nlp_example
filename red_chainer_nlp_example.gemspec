lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "red_chainer_nlp_example/version"

Gem::Specification.new do |spec|
  spec.name          = "red_chainer_nlp_example"
  spec.version       = RedChainerNlpExample::VERSION
  spec.authors       = ["tanaken0515"]
  spec.email         = ["tanaka.kentaro.kk1222@gmail.com"]

  spec.summary       = "Red Chainer NLP Example"
  spec.description   = "Red Chainer NLP Example"
  spec.homepage      = "https://github.com/tanaken0515/red_chainer_nlp_example"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tanaken0515/red_chainer_nlp_example"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "red-chainer", "~> 0.4.1"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
