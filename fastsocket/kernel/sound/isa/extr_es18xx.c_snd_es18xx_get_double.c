
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_es18xx {int dummy; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char snd_es18xx_reg_read (struct snd_es18xx*,int) ;
 struct snd_es18xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es18xx_get_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_es18xx *chip = snd_kcontrol_chip(kcontrol);
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;
 unsigned char left, right;

 left = snd_es18xx_reg_read(chip, left_reg);
 if (left_reg != right_reg)
  right = snd_es18xx_reg_read(chip, right_reg);
 else
  right = left;
 ucontrol->value.integer.value[0] = (left >> shift_left) & mask;
 ucontrol->value.integer.value[1] = (right >> shift_right) & mask;
 if (invert) {
  ucontrol->value.integer.value[0] = mask - ucontrol->value.integer.value[0];
  ucontrol->value.integer.value[1] = mask - ucontrol->value.integer.value[1];
 }
 return 0;
}
