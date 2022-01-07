
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {struct oxygen* private_data; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct oxygen {int mutex; int spdif_bits; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_to_iec958 (int ,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int spdif_default_get(struct snd_kcontrol *ctl,
        struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;

 mutex_lock(&chip->mutex);
 oxygen_to_iec958(chip->spdif_bits, value);
 mutex_unlock(&chip->mutex);
 return 0;
}
