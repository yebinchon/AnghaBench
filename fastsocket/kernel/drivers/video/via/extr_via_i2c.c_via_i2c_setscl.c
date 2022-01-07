
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct via_i2c_stuff {int i2c_port; } ;


 int DEBUG_MSG (char*) ;


 int VIASR ;
 int viafb_read_reg (int ,int) ;
 int viafb_write_reg (int,int ,int) ;

__attribute__((used)) static void via_i2c_setscl(void *data, int state)
{
 u8 val;
 struct via_i2c_stuff *via_i2c_chan = (struct via_i2c_stuff *)data;

 val = viafb_read_reg(VIASR, via_i2c_chan->i2c_port) & 0xF0;
 if (state)
  val |= 0x20;
 else
  val &= ~0x20;
 switch (via_i2c_chan->i2c_port) {
 case 128:
  val |= 0x01;
  break;
 case 129:
  val |= 0x80;
  break;
 default:
  DEBUG_MSG("via_i2c: specify wrong i2c port.\n");
 }
 viafb_write_reg(via_i2c_chan->i2c_port, VIASR, val);
}
