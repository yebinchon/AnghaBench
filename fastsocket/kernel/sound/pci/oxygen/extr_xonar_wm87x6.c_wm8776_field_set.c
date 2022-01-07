
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct oxygen {int mutex; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8776_field_set_from_ctl (struct snd_kcontrol*) ;

__attribute__((used)) static int wm8776_field_set(struct snd_kcontrol *ctl, unsigned int value)
{
 struct oxygen *chip = ctl->private_data;
 u8 min, max;
 int changed;

 min = (ctl->private_value >> 8) & 0xf;
 max = (ctl->private_value >> 12) & 0xf;
 if (value < min || value > max)
  return -EINVAL;
 mutex_lock(&chip->mutex);
 changed = value != (ctl->private_value & 0xf);
 if (changed) {
  ctl->private_value = (ctl->private_value & ~0xf) | value;
  wm8776_field_set_from_ctl(ctl);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
