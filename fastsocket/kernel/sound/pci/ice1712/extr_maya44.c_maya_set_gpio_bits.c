
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int maya_set_gpio_bits(struct snd_ice1712 *ice, unsigned int mask,
         unsigned int bits)
{
 unsigned int data;
 data = snd_ice1712_gpio_read(ice);
 if ((data & mask) == bits)
  return 0;
 snd_ice1712_gpio_write(ice, (data & ~mask) | bits);
 return 1;
}
