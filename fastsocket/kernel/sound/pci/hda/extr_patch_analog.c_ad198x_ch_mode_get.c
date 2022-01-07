
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int max_channels; } ;
struct ad198x_spec {TYPE_1__ multiout; int num_channel_mode; int channel_mode; } ;


 int snd_hda_ch_mode_get (struct hda_codec*,struct snd_ctl_elem_value*,int ,int ,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad198x_ch_mode_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 return snd_hda_ch_mode_get(codec, ucontrol, spec->channel_mode,
       spec->num_channel_mode, spec->multiout.max_channels);
}
