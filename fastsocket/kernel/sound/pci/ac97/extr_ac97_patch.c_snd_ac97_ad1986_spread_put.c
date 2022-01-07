
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int* regs; } ;


 int AC97_AD1986_LOSEL ;
 int AC97_AD1986_SOSEL ;
 int AC97_AD1986_SPRD ;
 int AC97_AD_MISC ;
 size_t AC97_AD_MISC3 ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad1986_spread_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 int ret0;
 int ret1;
 int sprd = (ac97->regs[AC97_AD_MISC3] & AC97_AD1986_LOSEL) != 0;

 ret0 = snd_ac97_update_bits(ac97, AC97_AD_MISC, AC97_AD1986_SPRD,
     ucontrol->value.integer.value[0] != 0
        ? AC97_AD1986_SPRD : 0);
 if (ret0 < 0)
  return ret0;


 ret1 = snd_ac97_update_bits(ac97, AC97_AD_MISC, AC97_AD1986_SOSEL,
        (ucontrol->value.integer.value[0] != 0
         || sprd)
        ? AC97_AD1986_SOSEL : 0);
 if (ret1 < 0)
  return ret1;

 return (ret0 > 0 || ret1 > 0) ? 1 : 0;
}
