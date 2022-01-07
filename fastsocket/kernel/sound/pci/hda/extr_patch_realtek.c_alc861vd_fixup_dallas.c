
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int snd_hda_override_pin_caps (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc861vd_fixup_dallas(struct hda_codec *codec,
      const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  snd_hda_override_pin_caps(codec, 0x18, 0x00000734);
  snd_hda_override_pin_caps(codec, 0x19, 0x0000073c);
 }
}
