
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {int inv_dmic_split; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_2__ {scalar_t__ pin; scalar_t__ type; } ;


 scalar_t__ AUTO_PIN_MIC ;
 scalar_t__ INPUT_PIN_ATTR_INT ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,scalar_t__) ;
 scalar_t__ snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static bool is_inv_dmic_pin(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 unsigned int val;
 int i;

 if (!spec->inv_dmic_split)
  return 0;
 for (i = 0; i < cfg->num_inputs; i++) {
  if (cfg->inputs[i].pin != nid)
   continue;
  if (cfg->inputs[i].type != AUTO_PIN_MIC)
   return 0;
  val = snd_hda_codec_get_pincfg(codec, nid);
  return snd_hda_get_input_pin_attr(val) == INPUT_PIN_ATTR_INT;
 }
 return 0;
}
