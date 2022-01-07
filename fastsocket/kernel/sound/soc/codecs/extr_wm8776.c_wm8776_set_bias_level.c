
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8776_PWRDOWN ;
 int snd_soc_update_bits (struct snd_soc_codec*,int ,int,int) ;

__attribute__((used)) static int wm8776_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (codec->bias_level == 131) {

   snd_soc_update_bits(codec, WM8776_PWRDOWN, 1, 0);
  }

  break;
 case 131:
  snd_soc_update_bits(codec, WM8776_PWRDOWN, 1, 1);
  break;
 }

 codec->bias_level = level;
 return 0;
}
