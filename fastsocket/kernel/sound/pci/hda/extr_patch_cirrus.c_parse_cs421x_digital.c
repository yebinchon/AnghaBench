
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct auto_pin_cfg {int dig_outs; int * dig_out_pins; } ;
struct TYPE_2__ {struct auto_pin_cfg autocfg; } ;
struct cs_spec {int spdif_detect; TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int AC_WCAP_UNSOL_CAP ;
 int SPDIF_EVENT ;
 int cs4210_spdif_automute ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static void parse_cs421x_digital(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;
 int i;

 for (i = 0; i < cfg->dig_outs; i++) {
  hda_nid_t nid = cfg->dig_out_pins[i];
  if (get_wcaps(codec, nid) & AC_WCAP_UNSOL_CAP) {
   spec->spdif_detect = 1;
   snd_hda_jack_detect_enable_callback(codec, nid,
           SPDIF_EVENT,
           cs4210_spdif_automute);
  }
 }
}
