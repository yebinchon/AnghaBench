
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {TYPE_1__* hw_rates; } ;
struct TYPE_5__ {size_t items; size_t item; int name; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;
struct TYPE_4__ {size_t count; int* list; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int sprintf (int ,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_vt1724_pro_internal_clock_info(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = ice->hw_rates->count + 1;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 if (uinfo->value.enumerated.item == uinfo->value.enumerated.items - 1)
  strcpy(uinfo->value.enumerated.name, "IEC958 Input");
 else
  sprintf(uinfo->value.enumerated.name, "%d",
   ice->hw_rates->list[uinfo->value.enumerated.item]);
 return 0;
}
