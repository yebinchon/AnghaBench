
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {unsigned short* regs; } ;


 unsigned short AC97_AD198X_DMIX1 ;
 size_t AC97_AD_MISC ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad1888_downmix_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned short val;

 val = ac97->regs[AC97_AD_MISC];
 if (!(val & AC97_AD198X_DMIX1))
  ucontrol->value.enumerated.item[0] = 0;
 else
  ucontrol->value.enumerated.item[0] = 1 + ((val >> 8) & 1);
 return 0;
}
