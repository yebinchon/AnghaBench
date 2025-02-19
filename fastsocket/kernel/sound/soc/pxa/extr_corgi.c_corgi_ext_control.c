
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int CORGI_GPIO_MUTE_L ;
 int CORGI_GPIO_MUTE_R ;




 scalar_t__ CORGI_SPK_ON ;
 int corgi_jack_func ;
 scalar_t__ corgi_spk_func ;
 int gpio_set_value (int ,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static void corgi_ext_control(struct snd_soc_codec *codec)
{

 switch (corgi_jack_func) {
 case 130:

  gpio_set_value(CORGI_GPIO_MUTE_L, 1);
  gpio_set_value(CORGI_GPIO_MUTE_R, 1);
  snd_soc_dapm_disable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_enable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  break;
 case 128:

  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 0);
  snd_soc_dapm_enable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  break;
 case 129:
  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 0);
  snd_soc_dapm_disable_pin(codec, "Mic Jack");
  snd_soc_dapm_enable_pin(codec, "Line Jack");
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  break;
 case 131:
  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 1);
  snd_soc_dapm_enable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_enable_pin(codec, "Headset Jack");
  break;
 }

 if (corgi_spk_func == CORGI_SPK_ON)
  snd_soc_dapm_enable_pin(codec, "Ext Spk");
 else
  snd_soc_dapm_disable_pin(codec, "Ext Spk");


 snd_soc_dapm_sync(codec);
}
