
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
struct hda_gen_spec {int multi_ios; int min_channel_count; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int ch_mode_info(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 int chs;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = spec->multi_ios + 1;
 if (uinfo->value.enumerated.item > spec->multi_ios)
  uinfo->value.enumerated.item = spec->multi_ios;
 chs = uinfo->value.enumerated.item * 2 + spec->min_channel_count;
 sprintf(uinfo->value.enumerated.name, "%dch", chs);
 return 0;
}
