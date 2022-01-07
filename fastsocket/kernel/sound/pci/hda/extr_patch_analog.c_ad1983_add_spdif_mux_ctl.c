
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_3__ {int dig_out_nid; } ;
struct TYPE_4__ {TYPE_1__ multiout; } ;
struct ad198x_spec {TYPE_2__ gen; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int ad1983_auto_smux_mixer ;
 int snd_hda_gen_add_kctl (TYPE_2__*,int *,int *) ;
 int snd_hda_get_num_conns (struct hda_codec*,int ) ;

__attribute__((used)) static int ad1983_add_spdif_mux_ctl(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;
 hda_nid_t dig_out = spec->gen.multiout.dig_out_nid;
 int num_conns;

 if (!dig_out)
  return 0;
 num_conns = snd_hda_get_num_conns(codec, dig_out);
 if (num_conns != 2 && num_conns != 3)
  return 0;
 if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), &ad1983_auto_smux_mixer))
  return -ENOMEM;
 return 0;
}
