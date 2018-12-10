class DeliveryPackagesController < ApplicationController
  skip_after_action :verify_authorized, only: [:edit, :update]
  def edit

    respond_to do |format|
    @delivery_package = DeliveryPackage.find(params[:id])
      format.html
      format.js
    end
  end

  def update
    @delivery_package = DeliveryPackage.find(params[:id])
    @delivery_package.update(delivery_package_params)
  end

  private

  def delivery_package_params
    params.require(:delivery_package).permit(:amount)
  end
end
