
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mixart {int* monitoring_active; TYPE_3__* mgr; int pipe_out_ana; int pipe_in_ana; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int MIXART_PCM_ANALOG ;
 int mixart_update_monitoring (struct snd_mixart*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_mixart* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_mixart_add_ref_pipe (struct snd_mixart*,int ,int,int) ;
 int snd_mixart_kill_ref_pipe (TYPE_3__*,int *,int) ;

__attribute__((used)) static int mixart_monitor_sw_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_mixart *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int i;
 mutex_lock(&chip->mgr->mixer_mutex);
 for (i = 0; i < 2; i++) {
  if (chip->monitoring_active[i] !=
      ucontrol->value.integer.value[i]) {
   chip->monitoring_active[i] =
    !!ucontrol->value.integer.value[i];
   changed |= (1<<i);
  }
 }
 if (changed) {

  int allocate = chip->monitoring_active[0] ||
   chip->monitoring_active[1];
  if (allocate) {

   snd_mixart_add_ref_pipe(chip, MIXART_PCM_ANALOG, 0, 1);

   snd_mixart_add_ref_pipe(chip, MIXART_PCM_ANALOG, 1, 1);
  }
  if (changed & 0x01)
   mixart_update_monitoring(chip, 0);
  if (changed & 0x02)
   mixart_update_monitoring(chip, 1);
  if (!allocate) {

   snd_mixart_kill_ref_pipe(chip->mgr,
       &chip->pipe_in_ana, 1);

   snd_mixart_kill_ref_pipe(chip->mgr,
       &chip->pipe_out_ana, 1);
  }
 }

 mutex_unlock(&chip->mgr->mixer_mutex);
 return (changed != 0);
}
