
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
struct hda_codec {unsigned int spdif_in_enable; int spdif_mutex; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_DIGI_CONVERT_1 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,unsigned int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hda_spdif_in_switch_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 unsigned int val = !!ucontrol->value.integer.value[0];
 int change;

 mutex_lock(&codec->spdif_mutex);
 change = codec->spdif_in_enable != val;
 if (change) {
  codec->spdif_in_enable = val;
  snd_hda_codec_write_cache(codec, nid, 0,
       AC_VERB_SET_DIGI_CONVERT_1, val);
 }
 mutex_unlock(&codec->spdif_mutex);
 return change;
}
