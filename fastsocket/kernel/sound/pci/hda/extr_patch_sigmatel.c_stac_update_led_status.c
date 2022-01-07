
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int vref_led; int vref_mute_led_nid; int gpio_data; int gpio_dir; int gpio_mask; int gpio_led; scalar_t__ gpio_led_polarity; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int AC_PINCTL_VREF_50 ;
 int AC_PINCTL_VREF_GRD ;
 int stac_gpio_set (struct hda_codec*,int ,int ,int ) ;
 int stac_vrefout_set (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void stac_update_led_status(struct hda_codec *codec, int enabled)
{
 struct sigmatel_spec *spec = codec->spec;
 int muted = !enabled;

 if (!spec->gpio_led)
  return;


 if (spec->gpio_led_polarity)
  muted = !muted;

 if (!spec->vref_mute_led_nid) {
  if (muted)
   spec->gpio_data |= spec->gpio_led;
  else
   spec->gpio_data &= ~spec->gpio_led;
  stac_gpio_set(codec, spec->gpio_mask,
    spec->gpio_dir, spec->gpio_data);
 } else {
  spec->vref_led = muted ? AC_PINCTL_VREF_50 : AC_PINCTL_VREF_GRD;
  stac_vrefout_set(codec, spec->vref_mute_led_nid,
     spec->vref_led);
 }
}
