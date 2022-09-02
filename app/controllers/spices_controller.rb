class SpicesController < ApplicationController

 def index
        render json: Spice.all
    end

    def create
        s = Spice.create!(spice_params)
        render json: s
    end

    def update
        s = Spice.find_by!(id: params[:id])
        s.update(spice_params)
        render json: s
    end

    def destroy
        s = Spice.find_by!(id: params[:id])
        s.destroy
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
