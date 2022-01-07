
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line_out_type; int line_outs; int speaker_outs; int * speaker_pins; int * line_out_pins; } ;
struct TYPE_3__ {TYPE_2__ autocfg; } ;
struct sigmatel_spec {TYPE_1__ gen; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 scalar_t__ INPUT_PIN_ATTR_INT ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 scalar_t__ snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static bool has_builtin_speaker(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 hda_nid_t *nid_pin;
 int nids, i;

 if (spec->gen.autocfg.line_out_type == AUTO_PIN_SPEAKER_OUT) {
  nid_pin = spec->gen.autocfg.line_out_pins;
  nids = spec->gen.autocfg.line_outs;
 } else {
  nid_pin = spec->gen.autocfg.speaker_pins;
  nids = spec->gen.autocfg.speaker_outs;
 }

 for (i = 0; i < nids; i++) {
  unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid_pin[i]);
  if (snd_hda_get_input_pin_attr(def_conf) == INPUT_PIN_ATTR_INT)
   return 1;
 }
 return 0;
}
