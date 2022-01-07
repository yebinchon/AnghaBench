
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mixer_control {unsigned int reg; unsigned int shift; int max; unsigned int invert; } ;
struct snd_soc_dapm_widget {int muted; int saved_value; int codec; scalar_t__ num_kcontrols; struct snd_kcontrol_new* kcontrols; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;


 int fls (int) ;
 int snd_soc_read (int ,unsigned int) ;
 int snd_soc_update_bits (int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static int dapm_set_pga(struct snd_soc_dapm_widget *widget, int power)
{
 const struct snd_kcontrol_new *k = widget->kcontrols;

 if (widget->muted && !power)
  return 0;
 if (!widget->muted && power)
  return 0;

 if (widget->num_kcontrols && k) {
  struct soc_mixer_control *mc =
   (struct soc_mixer_control *)k->private_value;
  unsigned int reg = mc->reg;
  unsigned int shift = mc->shift;
  int max = mc->max;
  unsigned int mask = (1 << fls(max)) - 1;
  unsigned int invert = mc->invert;

  if (power) {
   int i;

   if (invert) {
    for (i = max; i > widget->saved_value; i--)
     snd_soc_update_bits(widget->codec, reg, mask, i);
   } else {
    for (i = 0; i < widget->saved_value; i++)
     snd_soc_update_bits(widget->codec, reg, mask, i);
   }
   widget->muted = 0;
  } else {

   int val = snd_soc_read(widget->codec, reg);
   int i = widget->saved_value = (val >> shift) & mask;
   if (invert) {
    for (; i < mask; i++)
     snd_soc_update_bits(widget->codec, reg, mask, i);
   } else {
    for (; i > 0; i--)
     snd_soc_update_bits(widget->codec, reg, mask, i);
   }
   widget->muted = 1;
  }
 }
 return 0;
}
