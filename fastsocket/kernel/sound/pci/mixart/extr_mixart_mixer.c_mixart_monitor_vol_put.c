
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mixart {int* monitoring_volume; TYPE_3__* mgr; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int mixart_update_monitoring (struct snd_mixart*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_mixart* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int mixart_monitor_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_mixart *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int i;
 mutex_lock(&chip->mgr->mixer_mutex);
 for (i = 0; i < 2; i++) {
  if (chip->monitoring_volume[i] !=
      ucontrol->value.integer.value[i]) {
   chip->monitoring_volume[i] =
    !!ucontrol->value.integer.value[i];
   mixart_update_monitoring(chip, i);
   changed = 1;
  }
 }
 mutex_unlock(&chip->mgr->mixer_mutex);
 return changed;
}
