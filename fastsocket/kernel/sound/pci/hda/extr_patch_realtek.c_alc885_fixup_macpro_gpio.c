
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_INIT ;
 int alc882_gpio_mute (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc885_fixup_macpro_gpio(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_INIT)
  return;
 alc882_gpio_mute(codec, 0, 0);
 alc882_gpio_mute(codec, 1, 0);
}
