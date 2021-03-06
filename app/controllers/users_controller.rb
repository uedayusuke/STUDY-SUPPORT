class UsersController < ApplicationController
  def top
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to root_path, success: "削除されました"
  # end

  private

  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :kana_last_name, :kana_first_name)
  end
end
