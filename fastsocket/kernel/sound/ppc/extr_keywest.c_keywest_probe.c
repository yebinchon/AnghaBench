
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_set_clientdata (struct i2c_client*,int ) ;
 int keywest_ctx ;

__attribute__((used)) static int keywest_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 i2c_set_clientdata(client, keywest_ctx);
 return 0;
}
