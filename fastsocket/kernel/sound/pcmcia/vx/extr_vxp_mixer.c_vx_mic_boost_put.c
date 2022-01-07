
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {int mixer_mutex; } ;
struct snd_vxpocket {int mic_level; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_set_mic_boost (struct vx_core*,int) ;

__attribute__((used)) static int vx_mic_boost_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *_chip = snd_kcontrol_chip(kcontrol);
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;
 int val = !!ucontrol->value.integer.value[0];
 mutex_lock(&_chip->mixer_mutex);
 if (chip->mic_level != val) {
  vx_set_mic_boost(_chip, val);
  chip->mic_level = val;
  mutex_unlock(&_chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&_chip->mixer_mutex);
 return 0;
}
