
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_msnd {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_msnd* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_msndmix_set_mux (struct snd_msnd*,int ) ;

__attribute__((used)) static int snd_msndmix_put_mux(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_msnd *msnd = snd_kcontrol_chip(kcontrol);
 return snd_msndmix_set_mux(msnd, ucontrol->value.enumerated.item[0]);
}
