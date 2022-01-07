
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_msnd {int flags; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int items; unsigned int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int F_HAVEDIGITAL ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct snd_msnd* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int snd_msndmix_info_mux(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 static char *texts[3] = {
  "Analog", "MASS", "SPDIF",
 };
 struct snd_msnd *chip = snd_kcontrol_chip(kcontrol);
 unsigned items = test_bit(F_HAVEDIGITAL, &chip->flags) ? 3 : 2;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = items;
 if (uinfo->value.enumerated.item >= items)
  uinfo->value.enumerated.item = items - 1;
 strcpy(uinfo->value.enumerated.name,
  texts[uinfo->value.enumerated.item]);
 return 0;
}
