
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct ac97_enum {scalar_t__ shift_l; scalar_t__ shift_r; int mask; int * texts; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_ac97_info_enum_double(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct ac97_enum *e = (struct ac97_enum *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = e->shift_l == e->shift_r ? 1 : 2;
 uinfo->value.enumerated.items = e->mask;

 if (uinfo->value.enumerated.item > e->mask - 1)
  uinfo->value.enumerated.item = e->mask - 1;
 strcpy(uinfo->value.enumerated.name, e->texts[uinfo->value.enumerated.item]);
 return 0;
}
