
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int snd_cmipci_get_native_mixer (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int snd_cmipci_get_native_mixer_sensitive(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{

 return snd_cmipci_get_native_mixer(kcontrol, ucontrol);
}
