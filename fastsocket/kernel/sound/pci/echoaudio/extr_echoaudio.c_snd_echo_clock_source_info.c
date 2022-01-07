
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {size_t items; size_t item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct echoaudio {size_t num_clock_sources; size_t* clock_source_list; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_echo_clock_source_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 static char *names[8] = {
  "Internal", "Word", "Super", "S/PDIF", "ADAT", "ESync",
  "ESync96", "MTC"
 };
 struct echoaudio *chip;

 chip = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->value.enumerated.items = chip->num_clock_sources;
 uinfo->count = 1;
 if (uinfo->value.enumerated.item >= chip->num_clock_sources)
  uinfo->value.enumerated.item = chip->num_clock_sources - 1;
 strcpy(uinfo->value.enumerated.name, names[
   chip->clock_source_list[uinfo->value.enumerated.item]]);
 return 0;
}
