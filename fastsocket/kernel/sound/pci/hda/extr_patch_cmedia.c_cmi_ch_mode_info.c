
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {int num_channel_modes; int channel_modes; } ;


 int snd_hda_ch_mode_info (struct hda_codec*,struct snd_ctl_elem_info*,int ,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cmi_ch_mode_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct cmi_spec *spec = codec->spec;
 return snd_hda_ch_mode_info(codec, uinfo, spec->channel_modes,
        spec->num_channel_modes);
}
