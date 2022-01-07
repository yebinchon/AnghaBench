
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_6__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_3__ gpio; int akm; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int GPIO_MUTE_CONTROL ;
 int snd_akm4xxx_write (int ,int ,int,int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int stub1 (struct snd_ice1712*) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int juli_mute_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old_gpio, new_gpio;
 old_gpio = ice->gpio.get_data(ice);
 if (ucontrol->value.integer.value[0]) {

  if (kcontrol->private_value == GPIO_MUTE_CONTROL) {

   new_gpio = old_gpio & ~GPIO_MUTE_CONTROL;

   snd_akm4xxx_write(ice->akm, 0, 0x01, 0x01);
  } else

   new_gpio = old_gpio |
    (unsigned int) kcontrol->private_value;
 } else {

  if (kcontrol->private_value == GPIO_MUTE_CONTROL) {

   new_gpio = old_gpio | GPIO_MUTE_CONTROL;

   snd_akm4xxx_write(ice->akm, 0, 0x01, 0x03);
  } else

   new_gpio = old_gpio &
    ~((unsigned int) kcontrol->private_value);
 }





 if (old_gpio != new_gpio) {
  ice->gpio.set_data(ice, new_gpio);
  return 1;
 }

 return 0;
}
