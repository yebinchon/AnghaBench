
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {int* digital_capture_volume; int** digital_playback_volume; TYPE_3__* mgr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_pcxhr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_pcm_vol_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcxhr *chip = snd_kcontrol_chip(kcontrol);
 int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 int *stored_volume;
 int is_capture = kcontrol->private_value;

 mutex_lock(&chip->mgr->mixer_mutex);
 if (is_capture)
  stored_volume = chip->digital_capture_volume;
 else
  stored_volume = chip->digital_playback_volume[idx];
 ucontrol->value.integer.value[0] = stored_volume[0];
 ucontrol->value.integer.value[1] = stored_volume[1];
 mutex_unlock(&chip->mgr->mixer_mutex);
 return 0;
}
