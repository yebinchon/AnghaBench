
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {int sense_b; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void cs421x_fixup_sense_b(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 struct cs_spec *spec = codec->spec;
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  spec->sense_b = 1;
}
