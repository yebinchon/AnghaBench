
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int rreg; unsigned int shift; int max; unsigned int invert; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int fls (int) ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_soc_read (struct snd_soc_codec*,unsigned int) ;

int snd_soc_get_volsw_2r(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int reg = mc->reg;
 unsigned int reg2 = mc->rreg;
 unsigned int shift = mc->shift;
 int max = mc->max;
 unsigned int mask = (1 << fls(max)) - 1;
 unsigned int invert = mc->invert;

 ucontrol->value.integer.value[0] =
  (snd_soc_read(codec, reg) >> shift) & mask;
 ucontrol->value.integer.value[1] =
  (snd_soc_read(codec, reg2) >> shift) & mask;
 if (invert) {
  ucontrol->value.integer.value[0] =
   max - ucontrol->value.integer.value[0];
  ucontrol->value.integer.value[1] =
   max - ucontrol->value.integer.value[1];
 }

 return 0;
}
