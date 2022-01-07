
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_miro {int aci_amp; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_miro* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_miro_get_amp(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_miro *miro = snd_kcontrol_chip(kcontrol);
 ucontrol->value.integer.value[0] = miro->aci_amp;

 return 0;
}
