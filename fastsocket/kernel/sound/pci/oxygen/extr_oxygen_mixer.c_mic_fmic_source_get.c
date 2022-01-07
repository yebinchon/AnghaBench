
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
struct oxygen {int mutex; } ;


 int CM9780_FMIC2MIC ;
 int CM9780_JACK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read_ac97 (struct oxygen*,int ,int ) ;

__attribute__((used)) static int mic_fmic_source_get(struct snd_kcontrol *ctl,
          struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;

 mutex_lock(&chip->mutex);
 value->value.enumerated.item[0] =
  !!(oxygen_read_ac97(chip, 0, CM9780_JACK) & CM9780_FMIC2MIC);
 mutex_unlock(&chip->mutex);
 return 0;
}
