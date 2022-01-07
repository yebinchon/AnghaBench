
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {int mtx; int treble; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int tas_snd_treble_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);

 mutex_lock(&tas->mtx);
 ucontrol->value.integer.value[0] = tas->treble;
 mutex_unlock(&tas->mtx);
 return 0;
}
