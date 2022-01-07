
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_i2c_chan {scalar_t__ reg; scalar_t__ ioaddr; } ;


 unsigned int SAVAGE4_I2C_SDA_OUT ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void savage4_gpio_setsda(void *data, int val)
{
 struct savagefb_i2c_chan *chan = data;

 unsigned int r;
 r = readl(chan->ioaddr + chan->reg);
 if(val)
  r |= SAVAGE4_I2C_SDA_OUT;
 else
  r &= ~SAVAGE4_I2C_SDA_OUT;
 writel(r, chan->ioaddr + chan->reg);
 readl(chan->ioaddr + chan->reg);
}
