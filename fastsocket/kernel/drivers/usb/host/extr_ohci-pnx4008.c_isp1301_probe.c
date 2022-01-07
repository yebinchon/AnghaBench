
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;



__attribute__((used)) static int isp1301_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 return 0;
}
