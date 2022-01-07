
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_gus_card {int mix_cntrl_reg; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_gf1_get_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 int shift = kcontrol->private_value & 0xff;
 int invert = (kcontrol->private_value >> 8) & 1;

 ucontrol->value.integer.value[0] = (gus->mix_cntrl_reg >> shift) & 1;
 if (invert)
  ucontrol->value.integer.value[0] ^= 1;
 return 0;
}
