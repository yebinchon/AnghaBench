
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
 int strcpy (int ,char const*) ;

__attribute__((used)) static int snd_als4k_mono_capture_route_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 static const char *texts[3] = {
  "L chan only", "R chan only", "L ch/2 + R ch/2"
 };

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = 3;
 if (uinfo->value.enumerated.item > 2)
  uinfo->value.enumerated.item = 2;
 strcpy(uinfo->value.enumerated.name,
        texts[uinfo->value.enumerated.item]);
 return 0;
}
