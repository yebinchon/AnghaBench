
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int poodle_ext_control (struct snd_soc_codec*) ;
 scalar_t__ poodle_jack_func ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int poodle_set_jack(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);

 if (poodle_jack_func == ucontrol->value.integer.value[0])
  return 0;

 poodle_jack_func = ucontrol->value.integer.value[0];
 poodle_ext_control(codec);
 return 1;
}
