
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {int control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {int shared_out_nid; int shared_mic_nid; } ;
typedef int hda_nid_t ;


 void* HDA_COMPOSE_AMP_VAL (int,int,int ,int) ;


 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_volume_info (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_volume_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid = get_amp_nid(kcontrol);
 int ch = get_amp_channels(kcontrol);
 int dir = get_amp_direction(kcontrol);
 unsigned long pval;
 int err;

 switch (nid) {
 case 128:

  nid = spec->shared_out_nid;
  mutex_lock(&codec->control_mutex);
  pval = kcontrol->private_value;
  kcontrol->private_value = HDA_COMPOSE_AMP_VAL(nid, ch, 0, dir);
  err = snd_hda_mixer_amp_volume_info(kcontrol, uinfo);
  kcontrol->private_value = pval;
  mutex_unlock(&codec->control_mutex);
  break;
 case 129:

  nid = spec->shared_mic_nid;
  mutex_lock(&codec->control_mutex);
  pval = kcontrol->private_value;
  kcontrol->private_value = HDA_COMPOSE_AMP_VAL(nid, ch, 0, dir);
  err = snd_hda_mixer_amp_volume_info(kcontrol, uinfo);
  kcontrol->private_value = pval;
  mutex_unlock(&codec->control_mutex);
  break;
 default:
  err = snd_hda_mixer_amp_volume_info(kcontrol, uinfo);
 }
 return err;
}
