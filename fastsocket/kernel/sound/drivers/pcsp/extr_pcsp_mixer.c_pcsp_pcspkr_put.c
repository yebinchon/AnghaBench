
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcsp {int pcspkr; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_pcsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcsp_pcspkr_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcsp *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int spkr = ucontrol->value.integer.value[0];
 if (spkr != chip->pcspkr) {
  chip->pcspkr = spkr;
  changed = 1;
 }
 return changed;
}
