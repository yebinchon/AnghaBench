
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_msnd {int recsrc; int flags; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int F_HAVEDIGITAL ;
 int MSND_MASK_DIGITAL ;
 int MSND_MASK_SYNTH ;
 struct snd_msnd* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int snd_msndmix_get_mux(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_msnd *chip = snd_kcontrol_chip(kcontrol);

 ucontrol->value.enumerated.item[0] = 0;

 if (chip->recsrc & MSND_MASK_SYNTH) {
  ucontrol->value.enumerated.item[0] = 1;
 } else if ((chip->recsrc & MSND_MASK_DIGITAL) &&
   test_bit(F_HAVEDIGITAL, &chip->flags)) {
  ucontrol->value.enumerated.item[0] = 2;
 }


 return 0;
}
