
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_i2c_chan {int par; int reg; } ;


 int PROSAVAGE_I2C_SCL_IN ;
 int VGArCR (int ,int ) ;

__attribute__((used)) static int prosavage_gpio_getscl(void* data)
{
 struct savagefb_i2c_chan *chan = data;

 return (VGArCR(chan->reg, chan->par) & PROSAVAGE_I2C_SCL_IN) ? 1 : 0;
}
