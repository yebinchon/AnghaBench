
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {int* hp_pins; } ;
struct TYPE_4__ {int detect_hp; int automute_speaker; TYPE_1__ autocfg; int automute_hook; } ;
struct alc_spec {TYPE_2__ gen; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int HDA_GEN_HP_EVENT ;
 int alc260_gpio1_automute ;
 int alc_gpio1_init_verbs ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_gen_hp_automute ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int,int ,int ) ;

__attribute__((used)) static void alc260_fixup_gpio1_toggle(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 if (action == HDA_FIXUP_ACT_PROBE) {



  spec->gen.automute_hook = alc260_gpio1_automute;
  spec->gen.detect_hp = 1;
  spec->gen.automute_speaker = 1;
  spec->gen.autocfg.hp_pins[0] = 0x0f;
  snd_hda_jack_detect_enable_callback(codec, 0x0f, HDA_GEN_HP_EVENT,
          snd_hda_gen_hp_automute);
  snd_hda_add_verbs(codec, alc_gpio1_init_verbs);
 }
}
