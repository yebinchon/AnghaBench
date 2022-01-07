
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int inv_jack_detect; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void ad_fixup_inv_jack_detect(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  codec->inv_jack_detect = 1;
}
