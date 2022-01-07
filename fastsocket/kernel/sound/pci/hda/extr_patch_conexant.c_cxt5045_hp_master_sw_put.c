
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ cur_eapd; int hp_present; } ;


 unsigned int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int cxt_eapd_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,unsigned int,unsigned int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cxt5045_hp_master_sw_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct conexant_spec *spec = codec->spec;
 unsigned int bits;

 if (!cxt_eapd_put(kcontrol, ucontrol))
  return 0;




 bits = (!spec->hp_present && spec->cur_eapd) ? 0 : HDA_AMP_MUTE;
 snd_hda_codec_amp_stereo(codec, 0x10, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, bits);

 bits = spec->cur_eapd ? 0 : HDA_AMP_MUTE;
 snd_hda_codec_amp_stereo(codec, 0x11, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, bits);
 return 1;
}
