
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int ,int) ;
 int snd_hda_mixer_amp_switch_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad1884a_mobile_master_sw_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 int ret = snd_hda_mixer_amp_switch_put(kcontrol, ucontrol);
 int mute = (!ucontrol->value.integer.value[0] &&
      !ucontrol->value.integer.value[1]);

 snd_hda_codec_write_cache(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
       mute ? 0x02 : 0x0);
 return ret;
}
