
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct snd_soc_codec {int dev; struct i2c_client* control_data; } ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 scalar_t__ I2C_M_RD ;
 int dev_err (int ,char*,int ,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static unsigned int wm8993_read_hw(struct snd_soc_codec *codec, u8 reg)
{
 struct i2c_msg xfer[2];
 u16 data;
 int ret;
 struct i2c_client *i2c = codec->control_data;


 xfer[0].addr = i2c->addr;
 xfer[0].flags = 0;
 xfer[0].len = 1;
 xfer[0].buf = &reg;


 xfer[1].addr = i2c->addr;
 xfer[1].flags = I2C_M_RD;
 xfer[1].len = 2;
 xfer[1].buf = (u8 *)&data;

 ret = i2c_transfer(i2c->adapter, xfer, 2);
 if (ret != 2) {
  dev_err(codec->dev, "Failed to read 0x%x: %d\n", reg, ret);
  return 0;
 }

 return (data >> 8) | ((data & 0xff) << 8);
}
