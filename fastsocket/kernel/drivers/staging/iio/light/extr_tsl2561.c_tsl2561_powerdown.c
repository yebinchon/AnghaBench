
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2561_command {int cmd; int address; int block; int word; int clear; } ;
struct i2c_client {int dummy; } ;


 int TSL2561_CONTROL_REGISTER ;
 int TSL2561_CONT_REG_PWR_OFF ;
 int i2c_smbus_write_byte_data (struct i2c_client*,char,int ) ;

__attribute__((used)) static int tsl2561_powerdown(struct i2c_client *client)
{
 int err;
 struct tsl2561_command Command = {
  .cmd = 1,
  .clear = 0,
  .word = 0,
  .block = 0,
  .address = TSL2561_CONTROL_REGISTER,
 };

 err = i2c_smbus_write_byte_data(client, *(char *)(&Command),
     TSL2561_CONT_REG_PWR_OFF);
 return (err < 0) ? err : 0;
}
