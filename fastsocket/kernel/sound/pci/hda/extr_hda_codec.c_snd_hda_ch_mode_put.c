
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
struct hda_channel_mode {int channels; scalar_t__ sequence; } ;


 int EINVAL ;
 int snd_hda_sequence_write_cache (struct hda_codec*,scalar_t__) ;

int snd_hda_ch_mode_put(struct hda_codec *codec,
   struct snd_ctl_elem_value *ucontrol,
   const struct hda_channel_mode *chmode,
   int num_chmodes,
   int *max_channelsp)
{
 unsigned int mode;

 mode = ucontrol->value.enumerated.item[0];
 if (mode >= num_chmodes)
  return -EINVAL;
 if (*max_channelsp == chmode[mode].channels)
  return 0;

 *max_channelsp = chmode[mode].channels;
 if (chmode[mode].sequence)
  snd_hda_sequence_write_cache(codec, chmode[mode].sequence);
 return 1;
}
