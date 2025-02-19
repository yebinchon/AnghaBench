
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int ad1938_pll_powerctrl (struct snd_soc_codec*,int) ;

__attribute__((used)) static int ad1938_set_bias_level(struct snd_soc_codec *codec,
  enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  ad1938_pll_powerctrl(codec, 1);
  break;
 case 129:
  break;
 case 128:
 case 131:
  ad1938_pll_powerctrl(codec, 0);
  break;
 }
 codec->bias_level = level;
 return 0;
}
