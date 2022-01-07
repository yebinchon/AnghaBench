
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;





 scalar_t__ TOSA_SPK_ON ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int tosa_jack_func ;
 scalar_t__ tosa_spk_func ;

__attribute__((used)) static void tosa_ext_control(struct snd_soc_codec *codec)
{

 switch (tosa_jack_func) {
 case 129:
  snd_soc_dapm_disable_pin(codec, "Mic (Internal)");
  snd_soc_dapm_enable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  break;
 case 128:
  snd_soc_dapm_enable_pin(codec, "Mic (Internal)");
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_disable_pin(codec, "Headset Jack");
  break;
 case 130:
  snd_soc_dapm_disable_pin(codec, "Mic (Internal)");
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");
  snd_soc_dapm_enable_pin(codec, "Headset Jack");
  break;
 }

 if (tosa_spk_func == TOSA_SPK_ON)
  snd_soc_dapm_enable_pin(codec, "Speaker");
 else
  snd_soc_dapm_disable_pin(codec, "Speaker");

 snd_soc_dapm_sync(codec);
}
