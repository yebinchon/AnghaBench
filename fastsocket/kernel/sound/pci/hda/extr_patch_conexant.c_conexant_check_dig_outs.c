
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct conexant_spec* spec; } ;
struct TYPE_2__ {int dig_out_nid; } ;
struct conexant_spec {TYPE_1__ multiout; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_PORT_NONE ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int const) ;
 int snd_hda_get_connections (struct hda_codec*,int const,int *,int) ;

__attribute__((used)) static void conexant_check_dig_outs(struct hda_codec *codec,
        const hda_nid_t *dig_pins,
        int num_pins)
{
 struct conexant_spec *spec = codec->spec;
 hda_nid_t *nid_loc = &spec->multiout.dig_out_nid;
 int i;

 for (i = 0; i < num_pins; i++, dig_pins++) {
  unsigned int cfg = snd_hda_codec_get_pincfg(codec, *dig_pins);
  if (get_defcfg_connect(cfg) == AC_JACK_PORT_NONE)
   continue;
  if (snd_hda_get_connections(codec, *dig_pins, nid_loc, 1) != 1)
   continue;
 }
}
