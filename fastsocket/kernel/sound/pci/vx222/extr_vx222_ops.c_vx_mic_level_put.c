
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {int mixer_mutex; } ;
struct snd_vx222 {scalar_t__ mic_level; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 scalar_t__ MIC_LEVEL_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx2_set_input_level (struct snd_vx222*) ;

__attribute__((used)) static int vx_mic_level_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *_chip = snd_kcontrol_chip(kcontrol);
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;
 if (ucontrol->value.integer.value[0] < 0 ||
     ucontrol->value.integer.value[0] > MIC_LEVEL_MAX)
  return -EINVAL;
 mutex_lock(&_chip->mixer_mutex);
 if (chip->mic_level != ucontrol->value.integer.value[0]) {
  chip->mic_level = ucontrol->value.integer.value[0];
  vx2_set_input_level(chip);
  mutex_unlock(&_chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&_chip->mixer_mutex);
 return 0;
}
