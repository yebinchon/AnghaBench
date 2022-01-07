
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t013_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int adapter; } ;


 int CDBG (char*) ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mdelay (int) ;
 struct i2c_client* mt9t013_client ;
 int mt9t013_init_client (struct i2c_client*) ;
 int * mt9t013_sensorw ;
 int pr_err (char*,int) ;

__attribute__((used)) static int mt9t013_i2c_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 int rc = 0;
 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  rc = -ENOTSUPP;
  goto probe_failure;
 }

 mt9t013_sensorw =
  kzalloc(sizeof(struct mt9t013_work), GFP_KERNEL);

 if (!mt9t013_sensorw) {
  rc = -ENOMEM;
  goto probe_failure;
 }

 i2c_set_clientdata(client, mt9t013_sensorw);
 mt9t013_init_client(client);
 mt9t013_client = client;
 mt9t013_client->addr = mt9t013_client->addr >> 1;
 mdelay(50);

 CDBG("i2c probe ok\n");
 return 0;

probe_failure:
 kfree(mt9t013_sensorw);
 mt9t013_sensorw = ((void*)0);
 pr_err("i2c probe failure %d\n", rc);
 return rc;
}
