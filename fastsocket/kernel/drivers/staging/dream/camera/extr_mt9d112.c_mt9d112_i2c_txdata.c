
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {unsigned short addr; int len; unsigned char* buf; int flags; } ;
typedef int int32_t ;
struct TYPE_2__ {int adapter; } ;


 int CDBG (char*) ;
 int EIO ;
 scalar_t__ i2c_transfer (int ,struct i2c_msg*,int) ;
 TYPE_1__* mt9d112_client ;

__attribute__((used)) static int32_t mt9d112_i2c_txdata(unsigned short saddr,
 unsigned char *txdata, int length)
{
 struct i2c_msg msg[] = {
  {
   .addr = saddr,
   .flags = 0,
   .len = length,
   .buf = txdata,
  },
 };

 if (i2c_transfer(mt9d112_client->adapter, msg, 1) < 0) {
  CDBG("mt9d112_i2c_txdata failed\n");
  return -EIO;
 }

 return 0;
}
