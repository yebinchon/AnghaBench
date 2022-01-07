
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 unsigned char ICE1712_6FIRE_AK4524_CS_MASK ;
 unsigned char ICE1712_EWX2496_AK4524_CS ;
 unsigned char ICE1712_EWX2496_RW ;


 int snd_ice1712_gpio_write_bits (struct snd_ice1712*,unsigned char,unsigned char) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;

__attribute__((used)) static void ewx_i2c_start(struct snd_i2c_bus *bus)
{
 struct snd_ice1712 *ice = bus->private_data;
 unsigned char mask;

 snd_ice1712_save_gpio_status(ice);

 mask = ICE1712_EWX2496_RW;
 switch (ice->eeprom.subvendor) {
 case 128:
  mask |= ICE1712_EWX2496_AK4524_CS;
  break;
 case 129:
  mask |= ICE1712_6FIRE_AK4524_CS_MASK;
  break;
 }
 snd_ice1712_gpio_write_bits(ice, mask, mask);
}
