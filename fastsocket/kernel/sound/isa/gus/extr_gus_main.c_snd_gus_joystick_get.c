
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_gus_card {int joystick_dac; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_gus_joystick_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = gus->joystick_dac & 31;
 return 0;
}
