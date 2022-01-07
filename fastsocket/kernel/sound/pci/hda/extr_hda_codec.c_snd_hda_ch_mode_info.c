
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct hda_codec {int dummy; } ;
struct hda_channel_mode {int channels; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int sprintf (int ,char*,int) ;

int snd_hda_ch_mode_info(struct hda_codec *codec,
    struct snd_ctl_elem_info *uinfo,
    const struct hda_channel_mode *chmode,
    int num_chmodes)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = num_chmodes;
 if (uinfo->value.enumerated.item >= num_chmodes)
  uinfo->value.enumerated.item = num_chmodes - 1;
 sprintf(uinfo->value.enumerated.name, "%dch",
  chmode[uinfo->value.enumerated.item].channels);
 return 0;
}
