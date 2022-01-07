
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 unsigned char ICE1712_EWX2496_SERIAL_CLOCK ;
 unsigned char ICE1712_EWX2496_SERIAL_DATA ;
 int ICE1712_IREG_GPIO_DATA ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void ewx_i2c_setlines(struct snd_i2c_bus *bus, int clk, int data)
{
 struct snd_ice1712 *ice = bus->private_data;
 unsigned char tmp = 0;
 if (clk)
  tmp |= ICE1712_EWX2496_SERIAL_CLOCK;
 if (data)
  tmp |= ICE1712_EWX2496_SERIAL_DATA;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
 udelay(5);
}
