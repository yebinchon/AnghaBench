
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int max_channels; int num_dacs; } ;
struct ad198x_spec {TYPE_1__ multiout; scalar_t__ need_dac_fix; int num_channel_mode; int channel_mode; } ;


 int snd_hda_ch_mode_put (struct hda_codec*,struct snd_ctl_elem_value*,int ,int ,int*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad198x_ch_mode_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 int err = snd_hda_ch_mode_put(codec, ucontrol, spec->channel_mode,
          spec->num_channel_mode,
          &spec->multiout.max_channels);
 if (err >= 0 && spec->need_dac_fix)
  spec->multiout.num_dacs = spec->multiout.max_channels / 2;
 return err;
}
