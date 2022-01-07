
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int dummy; } ;


 int cxt5051_update_speaker (struct hda_codec*) ;
 int cxt_eapd_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cxt5051_hp_master_sw_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);

 if (!cxt_eapd_put(kcontrol, ucontrol))
  return 0;
 cxt5051_update_speaker(codec);
 return 1;
}
