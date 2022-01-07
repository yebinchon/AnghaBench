
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ice1712 {struct prodigy192_spec* spec; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct prodigy192_spec {int mute_mutex; } ;


 int STAC946X_LF_VOLUME ;
 int STAC946X_MASTER_VOLUME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stac9460_dac_mute (struct snd_ice1712*,int,int ) ;

__attribute__((used)) static int stac9460_dac_mute_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct prodigy192_spec *spec = ice->spec;
 int idx, change;

 if (kcontrol->private_value)
  idx = STAC946X_MASTER_VOLUME;
 else
  idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id) + STAC946X_LF_VOLUME;

 mutex_lock(&spec->mute_mutex);




 change = stac9460_dac_mute(ice, idx, ucontrol->value.integer.value[0]);
 mutex_unlock(&spec->mute_mutex);
 return change;
}
