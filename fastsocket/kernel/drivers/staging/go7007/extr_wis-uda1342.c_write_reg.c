
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_write_word_data (struct i2c_client*,int,int ) ;
 int swab16 (int) ;

__attribute__((used)) static int write_reg(struct i2c_client *client, int reg, int value)
{

 i2c_smbus_write_word_data(client, reg, swab16(value));
 return 0;
}
