
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned short* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {unsigned short* regs; } ;


 unsigned short AC97_AD1986_MVREF0 ;
 unsigned short AC97_AD1986_MVREF1 ;
 unsigned short AC97_AD1986_MVREF2 ;
 size_t AC97_AD_MISC2 ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad1986_vrefout_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{

 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned short val;
 unsigned short reg = ac97->regs[AC97_AD_MISC2];
 if ((reg & AC97_AD1986_MVREF0) != 0)
  val = 2;
 else if ((reg & AC97_AD1986_MVREF1) != 0)
  val = 3;
 else if ((reg & AC97_AD1986_MVREF2) != 0)
  val = 1;
 else
  val = 0;
 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
