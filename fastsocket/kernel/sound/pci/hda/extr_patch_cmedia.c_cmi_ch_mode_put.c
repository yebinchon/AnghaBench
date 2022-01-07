
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct TYPE_2__ {int max_channels; } ;
struct cmi_spec {TYPE_1__ multiout; int num_channel_modes; int channel_modes; } ;


 int snd_hda_ch_mode_put (struct hda_codec*,struct snd_ctl_elem_value*,int ,int ,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cmi_ch_mode_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct cmi_spec *spec = codec->spec;
 return snd_hda_ch_mode_put(codec, ucontrol, spec->channel_modes,
       spec->num_channel_modes, &spec->multiout.max_channels);
}
