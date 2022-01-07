
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;




 scalar_t__ magician_hp_switch ;
 int magician_in_sel ;
 scalar_t__ magician_spk_switch ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static void magician_ext_control(struct snd_soc_codec *codec)
{
 if (magician_spk_switch)
  snd_soc_dapm_enable_pin(codec, "Speaker");
 else
  snd_soc_dapm_disable_pin(codec, "Speaker");
 if (magician_hp_switch)
  snd_soc_dapm_enable_pin(codec, "Headphone Jack");
 else
  snd_soc_dapm_disable_pin(codec, "Headphone Jack");

 switch (magician_in_sel) {
 case 129:
  snd_soc_dapm_disable_pin(codec, "Headset Mic");
  snd_soc_dapm_enable_pin(codec, "Call Mic");
  break;
 case 128:
  snd_soc_dapm_disable_pin(codec, "Call Mic");
  snd_soc_dapm_enable_pin(codec, "Headset Mic");
  break;
 }

 snd_soc_dapm_sync(codec);
}
