
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int items; size_t item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct hdsp {int io_type; } ;






 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_hdsp_info_pref_sync_ref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static char *texts[] = {"Word", "IEC958", "ADAT1", "ADAT Sync", "ADAT2", "ADAT3" };
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;

 switch (hdsp->io_type) {
 case 131:
 case 129:
  uinfo->value.enumerated.items = 6;
  break;
 case 128:
  uinfo->value.enumerated.items = 4;
  break;
 case 130:
  uinfo->value.enumerated.items = 3;
  break;
 default:
  uinfo->value.enumerated.items = 0;
  break;
 }

 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
 return 0;
}
