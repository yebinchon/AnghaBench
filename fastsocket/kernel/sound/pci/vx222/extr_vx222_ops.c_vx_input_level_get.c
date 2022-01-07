
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {int mixer_mutex; } ;
struct snd_vx222 {int * input_level; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vx_input_level_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *_chip = snd_kcontrol_chip(kcontrol);
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;
 mutex_lock(&_chip->mixer_mutex);
 ucontrol->value.integer.value[0] = chip->input_level[0];
 ucontrol->value.integer.value[1] = chip->input_level[1];
 mutex_unlock(&_chip->mixer_mutex);
 return 0;
}
