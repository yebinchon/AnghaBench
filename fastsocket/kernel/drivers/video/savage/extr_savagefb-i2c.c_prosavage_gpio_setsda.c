
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_i2c_chan {int par; int reg; } ;


 unsigned int PROSAVAGE_I2C_ENAB ;
 unsigned int PROSAVAGE_I2C_SDA_OUT ;
 unsigned int VGArCR (int ,int ) ;
 int VGAwCR (int ,unsigned int,int ) ;

__attribute__((used)) static void prosavage_gpio_setsda(void* data, int val)
{
 struct savagefb_i2c_chan *chan = data;
 unsigned int r;

 r = VGArCR(chan->reg, chan->par);
 r |= PROSAVAGE_I2C_ENAB;
 if (val) {
  r |= PROSAVAGE_I2C_SDA_OUT;
 } else {
  r &= ~PROSAVAGE_I2C_SDA_OUT;
 }

 VGAwCR(chan->reg, r, chan->par);
}
