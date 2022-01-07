
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_7__ {int dig_out_nid; } ;
struct TYPE_8__ {TYPE_3__ multiout; } ;
struct ad198x_spec {unsigned int cur_smux; TYPE_4__ gen; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_CONNECT_SEL ;
 int EINVAL ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hda_get_num_conns (struct hda_codec*,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad1983_auto_smux_enum_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 unsigned int val = ucontrol->value.enumerated.item[0];
 hda_nid_t dig_out = spec->gen.multiout.dig_out_nid;
 int num_conns = snd_hda_get_num_conns(codec, dig_out);

 if (val >= num_conns)
  return -EINVAL;
 if (spec->cur_smux == val)
  return 0;
 spec->cur_smux = val;
 snd_hda_codec_write_cache(codec, dig_out, 0,
      AC_VERB_SET_CONNECT_SEL, val);
 return 1;
}
