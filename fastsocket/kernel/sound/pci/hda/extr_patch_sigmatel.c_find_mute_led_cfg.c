
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {unsigned int gpio_led; unsigned int gpio_led_polarity; int vref_mute_led_nid; } ;
struct hda_codec {int subsystem_id; int afg; struct sigmatel_spec* spec; } ;
struct dmi_device {int name; } ;


 unsigned int AC_GPIO_IO_COUNT ;
 int AC_PAR_GPIO_CAP ;
 int DMI_DEV_TYPE_OEM_STRING ;
 struct dmi_device* dmi_find_device (int ,int *,struct dmi_device const*) ;
 scalar_t__ get_int_hint (struct hda_codec*,char*,unsigned int*) ;
 int hp_blike_system (int ) ;
 int set_hp_led_gpio (struct hda_codec*) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;
 int sscanf (int ,char*,unsigned int*,...) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int find_mute_led_cfg(struct hda_codec *codec, int default_polarity)
{
 struct sigmatel_spec *spec = codec->spec;
 const struct dmi_device *dev = ((void*)0);

 if (get_int_hint(codec, "gpio_led", &spec->gpio_led)) {
  get_int_hint(codec, "gpio_led_polarity",
        &spec->gpio_led_polarity);
  return 1;
 }

 while ((dev = dmi_find_device(DMI_DEV_TYPE_OEM_STRING, ((void*)0), dev))) {
  if (sscanf(dev->name, "HP_Mute_LED_%d_%x",
      &spec->gpio_led_polarity,
      &spec->gpio_led) == 2) {
   unsigned int max_gpio;
   max_gpio = snd_hda_param_read(codec, codec->afg,
            AC_PAR_GPIO_CAP);
   max_gpio &= AC_GPIO_IO_COUNT;
   if (spec->gpio_led < max_gpio)
    spec->gpio_led = 1 << spec->gpio_led;
   else
    spec->vref_mute_led_nid = spec->gpio_led;
   return 1;
  }
  if (sscanf(dev->name, "HP_Mute_LED_%d",
      &spec->gpio_led_polarity) == 1) {
   set_hp_led_gpio(codec);
   return 1;
  }

  if (strstr(dev->name, "HP_Mute_LED_P_G")) {
   set_hp_led_gpio(codec);
   if (default_polarity >= 0)
    spec->gpio_led_polarity = default_polarity;
   else
    spec->gpio_led_polarity = 1;
   return 1;
  }
 }






 if (!hp_blike_system(codec->subsystem_id) &&
     (default_polarity == 0 || default_polarity == 1)) {
  set_hp_led_gpio(codec);
  spec->gpio_led_polarity = default_polarity;
  return 1;
 }
 return 0;
}
