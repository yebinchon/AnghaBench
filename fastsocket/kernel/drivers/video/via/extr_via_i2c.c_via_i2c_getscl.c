
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_i2c_stuff {int i2c_port; } ;


 int VIASR ;
 int viafb_read_reg (int ,int ) ;

__attribute__((used)) static int via_i2c_getscl(void *data)
{
 struct via_i2c_stuff *via_i2c_chan = (struct via_i2c_stuff *)data;

 if (viafb_read_reg(VIASR, via_i2c_chan->i2c_port) & 0x08)
  return 1;
 return 0;
}
