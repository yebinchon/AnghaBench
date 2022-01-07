
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int items; int item; int name; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;
struct TYPE_4__ {scalar_t__ dev_flags; } ;
struct snd_ac97 {TYPE_1__ spec; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int alc655_iec958_route_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static char *texts_655[3] = { "PCM", "Analog In", "IEC958 In" };
 static char *texts_658[4] = { "PCM", "Analog1 In", "Analog2 In", "IEC958 In" };
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = ac97->spec.dev_flags ? 4 : 3;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name,
        ac97->spec.dev_flags ?
        texts_658[uinfo->value.enumerated.item] :
        texts_655[uinfo->value.enumerated.item]);
 return 0;
}
