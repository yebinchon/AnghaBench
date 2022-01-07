
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_pcm179x {int hp_gain_offset; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_pcm179x* model_data; } ;
typedef int s8 ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_pcm1796_volume (struct oxygen*) ;

__attribute__((used)) static int st_hp_volume_offset_put(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 static const s8 offsets[] = { 2*-18, 2*-6, 0 };
 struct oxygen *chip = ctl->private_data;
 struct xonar_pcm179x *data = chip->model_data;
 s8 offset;
 int changed;

 if (value->value.enumerated.item[0] > 2)
  return -EINVAL;
 offset = offsets[value->value.enumerated.item[0]];
 mutex_lock(&chip->mutex);
 changed = offset != data->hp_gain_offset;
 if (changed) {
  data->hp_gain_offset = offset;
  update_pcm1796_volume(chip);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
