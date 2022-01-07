
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
struct hda_channel_mode {int channels; } ;



int snd_hda_ch_mode_get(struct hda_codec *codec,
   struct snd_ctl_elem_value *ucontrol,
   const struct hda_channel_mode *chmode,
   int num_chmodes,
   int max_channels)
{
 int i;

 for (i = 0; i < num_chmodes; i++) {
  if (max_channels == chmode[i].channels) {
   ucontrol->value.enumerated.item[0] = i;
   break;
  }
 }
 return 0;
}
