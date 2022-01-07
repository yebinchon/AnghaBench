
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {unsigned int max; unsigned int shift_l; unsigned int shift_r; int reg; } ;
struct snd_soc_dapm_widget {int codec; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_soc_read (int ,int ) ;

int snd_soc_dapm_get_enum_double(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *widget = snd_kcontrol_chip(kcontrol);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int val, bitmask;

 for (bitmask = 1; bitmask < e->max; bitmask <<= 1)
  ;
 val = snd_soc_read(widget->codec, e->reg);
 ucontrol->value.enumerated.item[0] = (val >> e->shift_l) & (bitmask - 1);
 if (e->shift_l != e->shift_r)
  ucontrol->value.enumerated.item[1] =
   (val >> e->shift_r) & (bitmask - 1);

 return 0;
}
