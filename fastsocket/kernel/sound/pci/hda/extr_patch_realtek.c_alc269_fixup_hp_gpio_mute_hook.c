
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {unsigned int gpio_led; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;

__attribute__((used)) static void alc269_fixup_hp_gpio_mute_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct alc_spec *spec = codec->spec;
 unsigned int oldval = spec->gpio_led;

 if (enabled)
  spec->gpio_led &= ~0x08;
 else
  spec->gpio_led |= 0x08;
 if (spec->gpio_led != oldval)
  snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
        spec->gpio_led);
}
