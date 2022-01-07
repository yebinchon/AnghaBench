
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 unsigned int VT1724_REVO_I2C_CLOCK ;
 unsigned int VT1724_REVO_I2C_DATA ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void revo_i2c_direction(struct snd_i2c_bus *bus, int clock, int data)
{
 struct snd_ice1712 *ice = bus->private_data;
 unsigned int mask, val;

 val = 0;
 if (clock)
  val |= VT1724_REVO_I2C_CLOCK;
 if (data)
  val |= VT1724_REVO_I2C_DATA;
 mask = VT1724_REVO_I2C_CLOCK | VT1724_REVO_I2C_DATA;
 ice->gpio.direction &= ~mask;
 ice->gpio.direction |= val;
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
 snd_ice1712_gpio_set_mask(ice, ~mask);
}
