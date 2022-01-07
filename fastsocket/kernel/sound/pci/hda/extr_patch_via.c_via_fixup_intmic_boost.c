
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int override_mic_boost (struct hda_codec*,int,int ,int,int) ;

__attribute__((used)) static void via_fixup_intmic_boost(struct hda_codec *codec,
      const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  override_mic_boost(codec, 0x30, 0, 2, 40);
}
