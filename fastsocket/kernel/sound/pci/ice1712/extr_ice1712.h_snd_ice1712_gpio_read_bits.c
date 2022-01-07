
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static inline int snd_ice1712_gpio_read_bits(struct snd_ice1712 *ice,
           unsigned int mask)
{
 ice->gpio.direction &= ~mask;
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
 return snd_ice1712_gpio_read(ice) & mask;
}
