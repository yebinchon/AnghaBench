
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_6__ {unsigned int (* get_data ) (struct snd_ice1712*) ;} ;
struct snd_ice1712 {TYPE_3__ gpio; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ GPIO_MUTE_CONTROL ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static int juli_mute_get(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 val = ice->gpio.get_data(ice) & (unsigned int) kcontrol->private_value;
 if (kcontrol->private_value == GPIO_MUTE_CONTROL)

  ucontrol->value.integer.value[0] = (val) ? 0 : 1;
 else

  ucontrol->value.integer.value[0] = (val) ? 1 : 0;
 return 0;
}
