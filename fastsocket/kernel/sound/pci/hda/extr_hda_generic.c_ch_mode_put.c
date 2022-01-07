
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int max_channels; int num_dacs; } ;
struct hda_gen_spec {int multi_ios; int ext_channel_count; int min_channel_count; TYPE_3__ multiout; scalar_t__ need_dac_fix; int const_channel_count; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int EINVAL ;
 int max (int,int ) ;
 int set_multi_io (struct hda_codec*,int,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ch_mode_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 int i, ch;

 ch = ucontrol->value.enumerated.item[0];
 if (ch < 0 || ch > spec->multi_ios)
  return -EINVAL;
 if (ch == (spec->ext_channel_count - spec->min_channel_count) / 2)
  return 0;
 spec->ext_channel_count = ch * 2 + spec->min_channel_count;
 for (i = 0; i < spec->multi_ios; i++)
  set_multi_io(codec, i, i < ch);
 spec->multiout.max_channels = max(spec->ext_channel_count,
       spec->const_channel_count);
 if (spec->need_dac_fix)
  spec->multiout.num_dacs = spec->multiout.max_channels / 2;
 return 1;
}
