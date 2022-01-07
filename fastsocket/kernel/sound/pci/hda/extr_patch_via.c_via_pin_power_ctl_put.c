
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_spec {unsigned int no_pin_power_ctl; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;


 int analog_low_current_mode (struct hda_codec*) ;
 int set_widgets_power_state (struct hda_codec*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int via_pin_power_ctl_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct via_spec *spec = codec->spec;
 unsigned int val = !ucontrol->value.enumerated.item[0];

 if (val == spec->no_pin_power_ctl)
  return 0;
 spec->no_pin_power_ctl = val;
 set_widgets_power_state(codec);
 analog_low_current_mode(codec);
 return 1;
}
