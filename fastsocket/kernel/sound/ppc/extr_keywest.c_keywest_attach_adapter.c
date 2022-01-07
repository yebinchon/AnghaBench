
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_board_info {int addr; int type; } ;
struct i2c_adapter {int name; } ;
struct TYPE_7__ {TYPE_1__* driver; int detected; } ;
struct TYPE_6__ {TYPE_3__* client; int addr; } ;
struct TYPE_5__ {int clients; } ;


 int EINVAL ;
 int ENODEV ;
 int I2C_NAME_SIZE ;
 TYPE_3__* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (TYPE_3__*) ;
 TYPE_2__* keywest_ctx ;
 int list_add_tail (int *,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int keywest_attach_adapter(struct i2c_adapter *adapter)
{
 struct i2c_board_info info;

 if (! keywest_ctx)
  return -EINVAL;

 if (strncmp(adapter->name, "mac-io", 6))
  return 0;

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, "keywest", I2C_NAME_SIZE);
 info.addr = keywest_ctx->addr;
 keywest_ctx->client = i2c_new_device(adapter, &info);
 if (!keywest_ctx->client)
  return -ENODEV;





 if (!keywest_ctx->client->driver) {
  i2c_unregister_device(keywest_ctx->client);
  keywest_ctx->client = ((void*)0);
  return -ENODEV;
 }





 list_add_tail(&keywest_ctx->client->detected,
        &keywest_ctx->client->driver->clients);
 return 0;
}
