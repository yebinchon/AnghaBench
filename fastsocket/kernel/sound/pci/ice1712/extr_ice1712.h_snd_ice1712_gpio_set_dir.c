
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_dir ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 int stub1 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static inline void snd_ice1712_gpio_set_dir(struct snd_ice1712 *ice, unsigned int bits)
{
 ice->gpio.set_dir(ice, bits);
}
