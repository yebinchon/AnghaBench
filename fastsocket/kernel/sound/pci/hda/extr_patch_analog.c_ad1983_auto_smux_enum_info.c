
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_3__ {int dig_out_nid; } ;
struct TYPE_4__ {TYPE_1__ multiout; } ;
struct ad198x_spec {TYPE_2__ gen; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 int snd_hda_enum_helper_info (struct snd_kcontrol*,struct snd_ctl_elem_info*,int,char const* const*) ;
 int snd_hda_get_num_conns (struct hda_codec*,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad1983_auto_smux_enum_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 static const char * const texts2[] = { "PCM", "ADC" };
 static const char * const texts3[] = { "PCM", "ADC1", "ADC2" };
 hda_nid_t dig_out = spec->gen.multiout.dig_out_nid;
 int num_conns = snd_hda_get_num_conns(codec, dig_out);

 if (num_conns == 2)
  return snd_hda_enum_helper_info(kcontrol, uinfo, 2, texts2);
 else if (num_conns == 3)
  return snd_hda_enum_helper_info(kcontrol, uinfo, 3, texts3);
 else
  return -EINVAL;
}
