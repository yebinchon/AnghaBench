
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int write_mask; int direction; } ;
struct snd_ice1712 {int gpio_mutex; TYPE_1__ gpio; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,int ) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,int ) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pontis_gpio_data_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int val, nval;
 int changed = 0;
 mutex_lock(&ice->gpio_mutex);
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
 snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
 val = snd_ice1712_gpio_read(ice) & 0xffff;
 nval = ucontrol->value.integer.value[0] & 0xffff;
 if (val != nval) {
  snd_ice1712_gpio_write(ice, nval);
  changed = 1;
 }
 mutex_unlock(&ice->gpio_mutex);
 return changed;
}
