
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gpio_led; } ;
struct hda_codec {int afg; struct sigmatel_spec* spec; } ;


 unsigned int AC_GPIO_IO_COUNT ;
 int AC_PAR_GPIO_CAP ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void set_hp_led_gpio(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 unsigned int gpio;

 if (spec->gpio_led)
  return;

 gpio = snd_hda_param_read(codec, codec->afg, AC_PAR_GPIO_CAP);
 gpio &= AC_GPIO_IO_COUNT;
 if (gpio > 3)
  spec->gpio_led = 0x08;
 else
  spec->gpio_led = 0x01;
}
