
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ct_atc {int (* spdif_out_get_status ) (struct ct_atc*,unsigned int*) ;} ;


 struct ct_atc* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct ct_atc*,unsigned int*) ;

__attribute__((used)) static int ct_spdif_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct ct_atc *atc = snd_kcontrol_chip(kcontrol);
 unsigned int status;

 atc->spdif_out_get_status(atc, &status);
 ucontrol->value.iec958.status[0] = (status >> 0) & 0xff;
 ucontrol->value.iec958.status[1] = (status >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (status >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (status >> 24) & 0xff;

 return 0;
}
