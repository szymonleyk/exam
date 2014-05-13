class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("c2c73ebd1e25cbc29cf61158c04ad78a")

  def set_config
   @configuration = Tmdb::Configuration.new
  end
  
end
