
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gpio_led; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void stac92hd71bxx_fixup_hp_dv4(struct hda_codec *codec,
           const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;
 spec->gpio_led = 0x01;
}
