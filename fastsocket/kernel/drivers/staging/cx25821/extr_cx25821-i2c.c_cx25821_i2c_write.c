
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_client {int addr; int adapter; scalar_t__ flags; } ;
struct cx25821_i2c {struct i2c_client i2c_client; } ;


 int i2c_xfer (int ,struct i2c_msg*,int) ;

int cx25821_i2c_write(struct cx25821_i2c *bus, u16 reg_addr, int value)
{
 struct i2c_client *client = &bus->i2c_client;
 int retval = 0;
 u8 buf[6] = { 0, 0, 0, 0, 0, 0 };

 struct i2c_msg msgs[1] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 6,
   .buf = buf,
   }
 };

 buf[0] = reg_addr >> 8;
 buf[1] = reg_addr & 0xff;
 buf[5] = (value >> 24) & 0xff;
 buf[4] = (value >> 16) & 0xff;
 buf[3] = (value >> 8) & 0xff;
 buf[2] = value & 0xff;
 client->flags = 0;
 msgs[0].addr = 0x44;

 retval = i2c_xfer(client->adapter, msgs, 1);

 return retval;
}
