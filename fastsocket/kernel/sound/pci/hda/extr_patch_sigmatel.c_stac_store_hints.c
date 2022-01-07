
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int eapd_switch; int gpio_mask; int gpio_mute; int eapd_mask; int gpio_dir; int gpio_data; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 scalar_t__ get_int_hint (struct hda_codec*,char*,int *) ;
 int snd_hda_get_bool_hint (struct hda_codec*,char*) ;

__attribute__((used)) static void stac_store_hints(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 int val;

 if (get_int_hint(codec, "gpio_mask", &spec->gpio_mask)) {
  spec->eapd_mask = spec->gpio_dir = spec->gpio_data =
   spec->gpio_mask;
 }
 if (get_int_hint(codec, "gpio_dir", &spec->gpio_dir))
  spec->gpio_mask &= spec->gpio_mask;
 if (get_int_hint(codec, "gpio_data", &spec->gpio_data))
  spec->gpio_dir &= spec->gpio_mask;
 if (get_int_hint(codec, "eapd_mask", &spec->eapd_mask))
  spec->eapd_mask &= spec->gpio_mask;
 if (get_int_hint(codec, "gpio_mute", &spec->gpio_mute))
  spec->gpio_mute &= spec->gpio_mask;
 val = snd_hda_get_bool_hint(codec, "eapd_switch");
 if (val >= 0)
  spec->eapd_switch = val;
}
