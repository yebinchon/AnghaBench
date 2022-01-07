
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {unsigned int cur_eapd; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int ,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cxt_eapd_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct conexant_spec *spec = codec->spec;
 int invert = (kcontrol->private_value >> 8) & 1;
 hda_nid_t nid = kcontrol->private_value & 0xff;
 unsigned int eapd;

 eapd = !!ucontrol->value.integer.value[0];
 if (invert)
  eapd = !eapd;
 if (eapd == spec->cur_eapd)
  return 0;

 spec->cur_eapd = eapd;
 snd_hda_codec_write_cache(codec, nid,
      0, AC_VERB_SET_EAPD_BTLENABLE,
      eapd ? 0x02 : 0x00);
 return 1;
}
