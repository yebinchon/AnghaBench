
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k3e2fx_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int adapter; } ;


 int CDBG (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,int ) ;
 int kzalloc (int,int ) ;
 int mdelay (int) ;
 struct i2c_client* s5k3e2fx_client ;
 int s5k3e2fx_init_client (struct i2c_client*) ;
 int s5k3e2fx_sensorw ;

__attribute__((used)) static int s5k3e2fx_i2c_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 int rc = 0;
 CDBG("s5k3e2fx_probe called!\n");

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  CDBG("i2c_check_functionality failed\n");
  goto probe_failure;
 }

 s5k3e2fx_sensorw = kzalloc(sizeof(struct s5k3e2fx_work), GFP_KERNEL);
 if (!s5k3e2fx_sensorw) {
  CDBG("kzalloc failed.\n");
  rc = -ENOMEM;
  goto probe_failure;
 }

 i2c_set_clientdata(client, s5k3e2fx_sensorw);
 s5k3e2fx_init_client(client);
 s5k3e2fx_client = client;

 mdelay(50);

 CDBG("s5k3e2fx_probe successed! rc = %d\n", rc);
 return 0;

probe_failure:
 CDBG("s5k3e2fx_probe failed! rc = %d\n", rc);
 return rc;
}
