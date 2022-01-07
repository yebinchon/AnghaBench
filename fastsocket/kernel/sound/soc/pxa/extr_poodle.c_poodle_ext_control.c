
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ POODLE_HP ;
 int POODLE_LOCOMO_GPIO_MUTE_L ;
 int POODLE_LOCOMO_GPIO_MUTE_R ;
 scalar_t__ POODLE_SPK_ON ;
 int locomo_gpio_write (int *,int ,int) ;
 scalar_t__ poodle_jack_func ;
 TYPE_1__ poodle_locomo_device ;
 scalar_t__ poodle_spk_func ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static void poodle_ext_control(struct snd_soc_codec *codec)
{

 if (poodle_jack_func == POODLE_HP) {

  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_MUTE_L, 1);
  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_MUTE_R, 1);
  snd_soc_dapm_enable_pin(codec, "Headphone Jack");
 } else {
  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_MUTE_L, 0);
  locomo_gpio_write(&poodle_locomo_device.dev,
   POODLE_LOCOMO_GPIO_MUTE_R, 0);
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
 }


 if (poodle_spk_func == POODLE_SPK_ON)
  snd_soc_dapm_enable_pin(codec, "Ext Spk");
 else
  snd_soc_dapm_disable_pin(codec, "Ext Spk");


 snd_soc_dapm_sync(codec);
}
