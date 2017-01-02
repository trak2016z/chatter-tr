class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :type
      t.string :title
      t.string :description
      t.string :category
      t.integer :owner_id
      t.integer :users_count

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
