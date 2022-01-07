
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_i2c_chan {scalar_t__ reg; scalar_t__ ioaddr; } ;


 int SAVAGE4_I2C_SDA_IN ;
 int readl (scalar_t__) ;

__attribute__((used)) static int savage4_gpio_getsda(void *data)
{
 struct savagefb_i2c_chan *chan = data;

 return (0 != (readl(chan->ioaddr + chan->reg) & SAVAGE4_I2C_SDA_IN));
}
