
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,char const* const) ;

int snd_hda_enum_helper_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo,
        int num_items, const char * const *texts)
{
 static const char * const texts_default[] = {
  "Disabled", "Enabled"
 };

 if (!texts || !num_items) {
  num_items = 2;
  texts = texts_default;
 }

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = num_items;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name,
        texts[uinfo->value.enumerated.item]);
 return 0;
}
