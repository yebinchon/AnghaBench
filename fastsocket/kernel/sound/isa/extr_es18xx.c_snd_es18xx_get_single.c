
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_es18xx {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_es18xx_reg_read (struct snd_es18xx*,int) ;
 struct snd_es18xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es18xx_get_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_es18xx *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int val;

 val = snd_es18xx_reg_read(chip, reg);
 ucontrol->value.integer.value[0] = (val >> shift) & mask;
 if (invert)
  ucontrol->value.integer.value[0] = mask - ucontrol->value.integer.value[0];
 return 0;
}
