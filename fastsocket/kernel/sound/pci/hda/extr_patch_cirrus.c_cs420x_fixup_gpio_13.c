
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {int gpio_eapd_hp; int gpio_eapd_speaker; int gpio_mask; int gpio_dir; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void cs420x_fixup_gpio_13(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  struct cs_spec *spec = codec->spec;
  spec->gpio_eapd_hp = 2;
  spec->gpio_eapd_speaker = 8;
  spec->gpio_mask = spec->gpio_dir =
   spec->gpio_eapd_hp | spec->gpio_eapd_speaker;
 }
}
