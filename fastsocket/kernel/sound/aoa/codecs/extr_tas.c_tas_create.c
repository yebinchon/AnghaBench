
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {TYPE_1__* driver; int detected; } ;
struct i2c_board_info {int addr; struct device_node* platform_data; int type; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int clients; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int tas_create(struct i2c_adapter *adapter,
         struct device_node *node,
         int addr)
{
 struct i2c_board_info info;
 struct i2c_client *client;

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, "aoa_codec_tas", I2C_NAME_SIZE);
 info.addr = addr;
 info.platform_data = node;

 client = i2c_new_device(adapter, &info);
 if (!client)
  return -ENODEV;





 if (!client->driver) {
  i2c_unregister_device(client);
  return -ENODEV;
 }





 list_add_tail(&client->detected, &client->driver->clients);
 return 0;
}
