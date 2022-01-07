
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct cmipci {scalar_t__ mixer_insensitive; } ;


 int snd_cmipci_put_native_mixer (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cmipci_put_native_mixer_sensitive(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);
 if (cm->mixer_insensitive) {

  return 0;
 }
 return snd_cmipci_put_native_mixer(kcontrol, ucontrol);
}
