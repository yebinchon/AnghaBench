
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int write_regs(struct i2c_client *client, u8 *regs)
{
 int i;

 for (i = 0; regs[i] != 0xFF; i += 2)
  if (i2c_smbus_write_byte_data(client, regs[i], regs[i + 1]) < 0)
   return -1;
 return 0;
}
