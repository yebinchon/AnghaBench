
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* hp_pins; scalar_t__* speaker_pins; scalar_t__* line_out_pins; } ;
struct hda_gen_spec {int master_mute; int hp_jack_present; int line_jack_present; int speaker_muted; int line_out_muted; TYPE_1__ autocfg; int automute_lo; int automute_speaker; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int do_automute (struct hda_codec*,int ,scalar_t__*,int) ;

void snd_hda_gen_update_outputs(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int on;





 do_automute(codec, ARRAY_SIZE(spec->autocfg.hp_pins),
      spec->autocfg.hp_pins, spec->master_mute);

 if (!spec->automute_speaker)
  on = 0;
 else
  on = spec->hp_jack_present | spec->line_jack_present;
 on |= spec->master_mute;
 spec->speaker_muted = on;
 do_automute(codec, ARRAY_SIZE(spec->autocfg.speaker_pins),
      spec->autocfg.speaker_pins, on);



 if (spec->autocfg.line_out_pins[0] == spec->autocfg.hp_pins[0] ||
     spec->autocfg.line_out_pins[0] == spec->autocfg.speaker_pins[0])
  return;
 if (!spec->automute_lo)
  on = 0;
 else
  on = spec->hp_jack_present;
 on |= spec->master_mute;
 spec->line_out_muted = on;
 do_automute(codec, ARRAY_SIZE(spec->autocfg.line_out_pins),
      spec->autocfg.line_out_pins, on);
}
