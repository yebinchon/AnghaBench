
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int items; unsigned int item; int name; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {unsigned int count; TYPE_1__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strlcpy (int ,char const* const,int) ;

int snd_ctl_enum_info(struct snd_ctl_elem_info *info, unsigned int channels,
        unsigned int items, const char *const names[])
{
 info->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 info->count = channels;
 info->value.enumerated.items = items;
 if (info->value.enumerated.item >= items)
  info->value.enumerated.item = items - 1;
 strlcpy(info->value.enumerated.name,
  names[info->value.enumerated.item],
  sizeof(info->value.enumerated.name));
 return 0;
}
