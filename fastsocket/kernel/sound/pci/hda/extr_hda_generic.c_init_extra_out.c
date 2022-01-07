
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line_out_type; int speaker_outs; int hp_outs; } ;
struct hda_gen_spec {int speaker_paths; TYPE_1__ autocfg; int hp_paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 int __init_extra_out (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void init_extra_out(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (spec->autocfg.line_out_type != AUTO_PIN_HP_OUT)
  __init_extra_out(codec, spec->autocfg.hp_outs, spec->hp_paths);
 if (spec->autocfg.line_out_type != AUTO_PIN_SPEAKER_OUT)
  __init_extra_out(codec, spec->autocfg.speaker_outs,
     spec->speaker_paths);
}
