
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {unsigned short addr; int len; unsigned char* buf; int flags; } ;
struct TYPE_2__ {int adapter; } ;


 int CDBG (char*) ;
 int EIO ;
 int I2C_M_RD ;
 scalar_t__ i2c_transfer (int ,struct i2c_msg*,int) ;
 TYPE_1__* s5k3e2fx_client ;

__attribute__((used)) static int s5k3e2fx_i2c_rxdata(unsigned short saddr, unsigned char *rxdata,
 int length)
{
 struct i2c_msg msgs[] = {
  {
   .addr = saddr,
   .flags = 0,
   .len = 2,
   .buf = rxdata,
  },
  {
   .addr = saddr,
   .flags = I2C_M_RD,
   .len = length,
   .buf = rxdata,
  },
 };

 if (i2c_transfer(s5k3e2fx_client->adapter, msgs, 2) < 0) {
  CDBG("s5k3e2fx_i2c_rxdata failed!\n");
  return -EIO;
 }

 return 0;
}
