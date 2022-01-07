
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct sigmatel_spec {int mic_mute_led_on; int gpio_data; int gpio_dir; int gpio_mask; int mic_mute_led_gpio; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int stac_gpio_set (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static void stac_capture_led_hook(struct hda_codec *codec,
          struct snd_ctl_elem_value *ucontrol)
{
 struct sigmatel_spec *spec = codec->spec;
 bool mute;

 if (!ucontrol)
  return;

 mute = !(ucontrol->value.integer.value[0] ||
   ucontrol->value.integer.value[1]);
 if (spec->mic_mute_led_on != mute) {
  spec->mic_mute_led_on = mute;
  if (mute)
   spec->gpio_data |= spec->mic_mute_led_gpio;
  else
   spec->gpio_data &= ~spec->mic_mute_led_gpio;
  stac_gpio_set(codec, spec->gpio_mask,
         spec->gpio_dir, spec->gpio_data);
 }
}
