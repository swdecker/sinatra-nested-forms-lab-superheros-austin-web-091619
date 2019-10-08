require 'sinatra/base'
require_relative '../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/team' do
      # @team = Team.new

      @team_team_name = params[:team][:name]
      @team_team_motto = params[:team][:motto]
      @team_members = params[:team][:members]



      erb :team
    end


end
