
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int SPITZ_GPIO_MUTE_L ;
 int SPITZ_GPIO_MUTE_R ;





 scalar_t__ SPITZ_SPK_ON ;
 int gpio_set_value (int ,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int spitz_jack_func ;
 scalar_t__ spitz_spk_func ;

__attribute__((used)) static void spitz_ext_control(struct snd_soc_codec *codec)
{
 if (spitz_spk_func == SPITZ_SPK_ON)
  snd_soc_dapm_enable_pin(codec, "Ext Spk");
 else
  snd_soc_dapm_disable_pin(codec, "Ext Spk");


 switch (spitz_jack_func) {
 case 131:

  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  snd_soc_dapm_disable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_enable_pin(codec, "Headphone Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 1);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
  break;
 case 128:

  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_enable_pin(codec, "Mic Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 case 129:

  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  snd_soc_dapm_disable_pin(codec, "Mic Jack");
  snd_soc_dapm_enable_pin(codec, "Line Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 case 132:

  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_enable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  snd_soc_dapm_enable_pin(codec, "Headset Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
  break;
 case 130:


  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  snd_soc_dapm_disable_pin(codec, "Mic Jack");
  snd_soc_dapm_disable_pin(codec, "Line Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 }
 snd_soc_dapm_sync(codec);
}
