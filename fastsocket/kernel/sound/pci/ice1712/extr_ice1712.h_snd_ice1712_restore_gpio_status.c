
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * saved; int write_mask; int direction; int (* set_mask ) (struct snd_ice1712*,int ) ;int (* set_dir ) (struct snd_ice1712*,int ) ;} ;
struct snd_ice1712 {int gpio_mutex; TYPE_1__ gpio; } ;


 int mutex_unlock (int *) ;
 int stub1 (struct snd_ice1712*,int ) ;
 int stub2 (struct snd_ice1712*,int ) ;

__attribute__((used)) static inline void snd_ice1712_restore_gpio_status(struct snd_ice1712 *ice)
{
 ice->gpio.set_dir(ice, ice->gpio.saved[0]);
 ice->gpio.set_mask(ice, ice->gpio.saved[1]);
 ice->gpio.direction = ice->gpio.saved[0];
 ice->gpio.write_mask = ice->gpio.saved[1];
 mutex_unlock(&ice->gpio_mutex);
}
