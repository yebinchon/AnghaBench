
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9d112_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int adapter; } ;


 int CDBG (char*) ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 struct i2c_client* mt9d112_client ;
 int mt9d112_init_client (struct i2c_client*) ;
 int * mt9d112_sensorw ;

__attribute__((used)) static int mt9d112_i2c_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 int rc = 0;
 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  rc = -ENOTSUPP;
  goto probe_failure;
 }

 mt9d112_sensorw =
  kzalloc(sizeof(struct mt9d112_work), GFP_KERNEL);

 if (!mt9d112_sensorw) {
  rc = -ENOMEM;
  goto probe_failure;
 }

 i2c_set_clientdata(client, mt9d112_sensorw);
 mt9d112_init_client(client);
 mt9d112_client = client;

 CDBG("mt9d112_probe succeeded!\n");

 return 0;

probe_failure:
 kfree(mt9d112_sensorw);
 mt9d112_sensorw = ((void*)0);
 CDBG("mt9d112_probe failed!\n");
 return rc;
}
