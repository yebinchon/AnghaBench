
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_INIT ;
 int alc889_coef_init (struct hda_codec*) ;

__attribute__((used)) static void alc889_fixup_coef(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_INIT)
  return;
 alc889_coef_init(codec);
}
