
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_automute_hook; } ;
struct alc_spec {TYPE_1__ gen; int parse_flags; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_PINCFG_HEADSET_MIC ;
 int alc269_x101_hp_automute_hook ;

__attribute__((used)) static void alc269_fixup_x101_headset_mic(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->parse_flags |= HDA_PINCFG_HEADSET_MIC;
  spec->gen.hp_automute_hook = alc269_x101_hp_automute_hook;
 }
}
