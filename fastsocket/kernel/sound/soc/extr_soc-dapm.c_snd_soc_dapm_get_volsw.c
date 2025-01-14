
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; unsigned int rshift; int max; unsigned int invert; } ;
struct snd_soc_dapm_widget {scalar_t__ id; unsigned int saved_value; int codec; int power; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int fls (int) ;
 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_soc_dapm_pga ;
 unsigned int snd_soc_read (int ,unsigned int) ;

int snd_soc_dapm_get_volsw(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *widget = snd_kcontrol_chip(kcontrol);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;
 unsigned int shift = mc->shift;
 unsigned int rshift = mc->rshift;
 int max = mc->max;
 unsigned int invert = mc->invert;
 unsigned int mask = (1 << fls(max)) - 1;


 if (widget->id == snd_soc_dapm_pga && !widget->power) {
  ucontrol->value.integer.value[0] = widget->saved_value;
  return 0;
 }

 ucontrol->value.integer.value[0] =
  (snd_soc_read(widget->codec, reg) >> shift) & mask;
 if (shift != rshift)
  ucontrol->value.integer.value[1] =
   (snd_soc_read(widget->codec, reg) >> rshift) & mask;
 if (invert) {
  ucontrol->value.integer.value[0] =
   max - ucontrol->value.integer.value[0];
  if (shift != rshift)
   ucontrol->value.integer.value[1] =
    max - ucontrol->value.integer.value[1];
 }

 return 0;
}
