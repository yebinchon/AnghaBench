
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
struct snd_ac97 {int dummy; } ;


 int AC97_AD_SERIAL_CFG ;
 int EINVAL ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,unsigned short) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad198x_spdif_source_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned short val;

 if (ucontrol->value.enumerated.item[0] > 1)
  return -EINVAL;
 val = ucontrol->value.enumerated.item[0] << 2;
 return snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x0004, val);
}
