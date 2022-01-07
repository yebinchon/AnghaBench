
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int type; int pin; } ;


 int AUTO_PIN_LINE_IN ;
 int AUTO_PIN_MIC ;
 scalar_t__ can_be_multiio_pin (struct hda_codec*,unsigned int,int ) ;
 unsigned int get_defcfg_location (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;

__attribute__((used)) static int count_multiio_pins(struct hda_codec *codec, hda_nid_t reference_pin)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 unsigned int defcfg = snd_hda_codec_get_pincfg(codec, reference_pin);
 unsigned int location = get_defcfg_location(defcfg);
 int type, i;
 int num_pins = 0;

 for (type = AUTO_PIN_LINE_IN; type >= AUTO_PIN_MIC; type--) {
  for (i = 0; i < cfg->num_inputs; i++) {
   if (cfg->inputs[i].type != type)
    continue;
   if (can_be_multiio_pin(codec, location,
            cfg->inputs[i].pin))
    num_pins++;
  }
 }
 return num_pins;
}
