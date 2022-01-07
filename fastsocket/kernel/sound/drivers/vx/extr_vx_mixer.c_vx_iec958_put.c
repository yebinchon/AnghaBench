
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {unsigned int uer_bits; int mixer_mutex; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_set_iec958_status (struct vx_core*,unsigned int) ;

__attribute__((used)) static int vx_iec958_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 unsigned int val;

 val = (ucontrol->value.iec958.status[0] << 0) |
       (ucontrol->value.iec958.status[1] << 8) |
       (ucontrol->value.iec958.status[2] << 16) |
       (ucontrol->value.iec958.status[3] << 24);
 mutex_lock(&chip->mixer_mutex);
 if (chip->uer_bits != val) {
  chip->uer_bits = val;
  vx_set_iec958_status(chip, val);
  mutex_unlock(&chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&chip->mixer_mutex);
 return 0;
}
