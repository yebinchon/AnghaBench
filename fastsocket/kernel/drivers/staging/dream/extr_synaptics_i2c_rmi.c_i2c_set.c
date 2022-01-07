
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct synaptics_ts_data {int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int pr_err (char*,char*) ;

__attribute__((used)) static int i2c_set(struct synaptics_ts_data *ts, u8 reg, u8 val, char *msg)
{
 int ret = i2c_smbus_write_byte_data(ts->client, reg, val);
 if (ret < 0)
  pr_err("i2c_smbus_write_byte_data failed (%s)\n", msg);
 return ret;
}
