
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {int mute_l; int mute_r; int mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tas_set_volume (struct tas*) ;

__attribute__((used)) static int tas_snd_mute_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);

 mutex_lock(&tas->mtx);
 if (tas->mute_l == !ucontrol->value.integer.value[0]
  && tas->mute_r == !ucontrol->value.integer.value[1]) {
  mutex_unlock(&tas->mtx);
  return 0;
 }

 tas->mute_l = !ucontrol->value.integer.value[0];
 tas->mute_r = !ucontrol->value.integer.value[1];
 if (tas->hw_enabled)
  tas_set_volume(tas);
 mutex_unlock(&tas->mtx);
 return 1;
}
