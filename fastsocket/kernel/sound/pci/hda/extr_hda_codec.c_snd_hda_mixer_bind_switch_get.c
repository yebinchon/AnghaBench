
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int control_mutex; } ;


 unsigned long AMP_VAL_IDX_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_switch_get (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_hda_mixer_bind_switch_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned long pval;
 int err;

 mutex_lock(&codec->control_mutex);
 pval = kcontrol->private_value;
 kcontrol->private_value = pval & ~AMP_VAL_IDX_MASK;
 err = snd_hda_mixer_amp_switch_get(kcontrol, ucontrol);
 kcontrol->private_value = pval;
 mutex_unlock(&codec->control_mutex);
 return err;
}
