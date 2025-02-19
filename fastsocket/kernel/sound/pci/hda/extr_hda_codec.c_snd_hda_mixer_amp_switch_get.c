
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {long* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_AMP_MUTE ;
 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_index (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 int snd_hda_codec_amp_read (struct hda_codec*,int ,int,int,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_hda_mixer_amp_switch_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = get_amp_nid(kcontrol);
 int chs = get_amp_channels(kcontrol);
 int dir = get_amp_direction(kcontrol);
 int idx = get_amp_index(kcontrol);
 long *valp = ucontrol->value.integer.value;

 if (chs & 1)
  *valp++ = (snd_hda_codec_amp_read(codec, nid, 0, dir, idx) &
      HDA_AMP_MUTE) ? 0 : 1;
 if (chs & 2)
  *valp = (snd_hda_codec_amp_read(codec, nid, 1, dir, idx) &
    HDA_AMP_MUTE) ? 0 : 1;
 return 0;
}
