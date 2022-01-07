
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_4__ {int * hp_pins; } ;
struct TYPE_6__ {TYPE_1__ autocfg; TYPE_2__* am_entry; } ;
struct alc_spec {TYPE_3__ gen; } ;
struct TYPE_5__ {int pin; } ;


 int HDA_FIXUP_ACT_PROBE ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_jack_set_gating_jack (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void alc271_hp_gate_mic_jack(struct hda_codec *codec,
        const struct hda_fixup *fix,
        int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PROBE) {
  if (snd_BUG_ON(!spec->gen.am_entry[1].pin ||
          !spec->gen.autocfg.hp_pins[0]))
   return;
  snd_hda_jack_set_gating_jack(codec, spec->gen.am_entry[1].pin,
          spec->gen.autocfg.hp_pins[0]);
 }
}
