
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int items; int item; int name; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct TYPE_6__ {int * member; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 TYPE_3__* se200pci_cont ;
 int se200pci_get_enum_count (int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int se200pci_cont_enum_info(struct snd_kcontrol *kc,
       struct snd_ctl_elem_info *uinfo)
{
 int n, c;

 n = kc->private_value;
 c = se200pci_get_enum_count(n);
 if (!c)
  return -EINVAL;
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = c;
 if (uinfo->value.enumerated.item >= c)
  uinfo->value.enumerated.item = c - 1;
 strcpy(uinfo->value.enumerated.name,
        se200pci_cont[n].member[uinfo->value.enumerated.item]);
 return 0;
}
