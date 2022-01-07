
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_verb {int member_0; int member_2; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {int hook; } ;
struct TYPE_4__ {int cap_sync_hook; TYPE_1__ vmaster_mute; } ;
struct alc_spec {scalar_t__ gpio_led; TYPE_2__ gen; } ;




 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc269_fixup_hp_gpio_mic_mute_hook ;
 int alc269_fixup_hp_gpio_mute_hook ;
 int snd_hda_add_verbs (struct hda_codec*,struct hda_verb const*) ;

__attribute__((used)) static void alc269_fixup_hp_gpio_led(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 static const struct hda_verb gpio_init[] = {
  { 0x01, 128, 0x18 },
  { 0x01, 129, 0x18 },
  {}
 };

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->gen.vmaster_mute.hook = alc269_fixup_hp_gpio_mute_hook;
  spec->gen.cap_sync_hook = alc269_fixup_hp_gpio_mic_mute_hook;
  spec->gpio_led = 0;
  snd_hda_add_verbs(codec, gpio_init);
 }
}
