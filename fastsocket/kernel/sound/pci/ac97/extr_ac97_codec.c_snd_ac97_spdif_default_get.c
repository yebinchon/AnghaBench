
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int spdif_status; int reg_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_spdif_default_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);

 mutex_lock(&ac97->reg_mutex);
 ucontrol->value.iec958.status[0] = ac97->spdif_status & 0xff;
 ucontrol->value.iec958.status[1] = (ac97->spdif_status >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (ac97->spdif_status >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (ac97->spdif_status >> 24) & 0xff;
 mutex_unlock(&ac97->reg_mutex);
 return 0;
}
