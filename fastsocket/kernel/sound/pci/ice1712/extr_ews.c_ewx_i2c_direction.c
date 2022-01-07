
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 unsigned char ICE1712_EWX2496_SERIAL_CLOCK ;
 unsigned char ICE1712_EWX2496_SERIAL_DATA ;
 int ICE1712_IREG_GPIO_DIRECTION ;
 int ICE1712_IREG_GPIO_WRITE_MASK ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void ewx_i2c_direction(struct snd_i2c_bus *bus, int clock, int data)
{
 struct snd_ice1712 *ice = bus->private_data;
 unsigned char mask = 0;

 if (clock)
  mask |= ICE1712_EWX2496_SERIAL_CLOCK;
 if (data)
  mask |= ICE1712_EWX2496_SERIAL_DATA;
 ice->gpio.direction &= ~(ICE1712_EWX2496_SERIAL_CLOCK|ICE1712_EWX2496_SERIAL_DATA);
 ice->gpio.direction |= mask;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DIRECTION, ice->gpio.direction);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_WRITE_MASK, ~mask);
}
