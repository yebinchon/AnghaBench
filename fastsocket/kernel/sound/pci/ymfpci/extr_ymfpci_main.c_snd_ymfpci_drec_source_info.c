
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int items; int item; int name; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_ymfpci_drec_source_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *info)
{
 static char *texts[3] = {"AC'97", "IEC958", "ZV Port"};

 info->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 info->count = 1;
 info->value.enumerated.items = 3;
 if (info->value.enumerated.item > 2)
  info->value.enumerated.item = 2;
 strcpy(info->value.enumerated.name, texts[info->value.enumerated.item]);
 return 0;
}
