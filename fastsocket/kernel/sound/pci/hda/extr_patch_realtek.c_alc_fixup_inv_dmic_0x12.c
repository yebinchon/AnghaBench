
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int alc_add_inv_dmic_mixer (struct hda_codec*,int) ;

__attribute__((used)) static void alc_fixup_inv_dmic_0x12(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PROBE)
  alc_add_inv_dmic_mixer(codec, 0x12);
}
