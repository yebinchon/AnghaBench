
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;
struct TYPE_5__ {int items; int item; int name; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 scalar_t__ VT1724_SUBDEVICE_AUREON71_UNIVERSE ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char const* const) ;

__attribute__((used)) static int wm_adc_mux_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "CD",
  "Aux",
  "Line",
  "Mic",
  "AC97"
 };
 static const char * const universe_texts[] = {
  "Aux1",
  "CD",
  "Phono",
  "Line",
  "Aux2",
  "Mic",
  "Aux3",
  "AC97"
 };
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 2;
 if (ice->eeprom.subvendor == VT1724_SUBDEVICE_AUREON71_UNIVERSE) {
  uinfo->value.enumerated.items = 8;
  if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
   uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
  strcpy(uinfo->value.enumerated.name, universe_texts[uinfo->value.enumerated.item]);
 } else {
  uinfo->value.enumerated.items = 5;
  if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
   uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
  strcpy(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
 }
 return 0;
}
