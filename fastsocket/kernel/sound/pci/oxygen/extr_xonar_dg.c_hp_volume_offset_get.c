
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int hp_vol_att; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp_volume_offset_get(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;

 mutex_lock(&chip->mutex);
 if (data->hp_vol_att > 2 * 7)
  value->value.enumerated.item[0] = 0;
 else if (data->hp_vol_att > 0)
  value->value.enumerated.item[0] = 1;
 else
  value->value.enumerated.item[0] = 2;
 mutex_unlock(&chip->mutex);
 return 0;
}
