
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; scalar_t__ line_out_type; scalar_t__ line_outs; scalar_t__ hp_outs; TYPE_1__* inputs; void** hp_pins; void** line_out_pins; } ;
struct hda_gen_spec {int hp_mic; int suppress_auto_mic; void* hp_mic_pin; scalar_t__ suppress_hp_mic_detect; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef void* hda_nid_t ;
struct TYPE_2__ {int is_headphone_mic; int type; void* pin; } ;


 int AC_PINCAP_IN ;
 int AUTO_CFG_MAX_INS ;
 scalar_t__ AUTO_PIN_HP_OUT ;
 int AUTO_PIN_MIC ;
 scalar_t__ INPUT_PIN_ATTR_INT ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,void*) ;
 scalar_t__ snd_hda_get_input_pin_attr (unsigned int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,void*) ;
 int snd_printdd (char*,void*) ;

__attribute__((used)) static int create_hp_mic(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 unsigned int defcfg;
 hda_nid_t nid;

 if (!spec->hp_mic) {
  if (spec->suppress_hp_mic_detect)
   return 0;



  if (cfg->num_inputs > 1)
   return 0;
  else if (cfg->num_inputs == 1) {
   defcfg = snd_hda_codec_get_pincfg(codec, cfg->inputs[0].pin);
   if (snd_hda_get_input_pin_attr(defcfg) != INPUT_PIN_ATTR_INT)
    return 0;
  }
 }

 spec->hp_mic = 0;
 if (cfg->num_inputs >= AUTO_CFG_MAX_INS)
  return 0;

 nid = 0;
 if (cfg->line_out_type == AUTO_PIN_HP_OUT && cfg->line_outs > 0)
  nid = cfg->line_out_pins[0];
 else if (cfg->hp_outs > 0)
  nid = cfg->hp_pins[0];
 if (!nid)
  return 0;

 if (!(snd_hda_query_pin_caps(codec, nid) & AC_PINCAP_IN))
  return 0;

 cfg->inputs[cfg->num_inputs].pin = nid;
 cfg->inputs[cfg->num_inputs].type = AUTO_PIN_MIC;
 cfg->inputs[cfg->num_inputs].is_headphone_mic = 1;
 cfg->num_inputs++;
 spec->hp_mic = 1;
 spec->hp_mic_pin = nid;

 spec->suppress_auto_mic = 1;
 snd_printdd("hda-codec: Enable shared I/O jack on NID 0x%x\n", nid);
 return 0;
}
