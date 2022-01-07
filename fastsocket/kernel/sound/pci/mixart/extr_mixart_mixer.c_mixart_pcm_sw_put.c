
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mixart {int** digital_playback_active; TYPE_3__* mgr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int MIXART_PLAYBACK_STREAMS ;
 int MIXART_VOL_AES_MASK ;
 int mixart_update_playback_stream_level (struct snd_mixart*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_BUG_ON (int) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_mixart* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int mixart_pcm_sw_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_mixart *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int is_aes = kcontrol->private_value & MIXART_VOL_AES_MASK;
 int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 int i, j;
 snd_BUG_ON(idx >= MIXART_PLAYBACK_STREAMS);
 mutex_lock(&chip->mgr->mixer_mutex);
 j = idx;
 if (is_aes)
  j += MIXART_PLAYBACK_STREAMS;
 for (i = 0; i < 2; i++) {
  if (chip->digital_playback_active[j][i] !=
      ucontrol->value.integer.value[i]) {
   chip->digital_playback_active[j][i] =
    !!ucontrol->value.integer.value[i];
   changed = 1;
  }
 }
 if (changed)
  mixart_update_playback_stream_level(chip, is_aes, idx);
 mutex_unlock(&chip->mgr->mixer_mutex);
 return changed;
}
