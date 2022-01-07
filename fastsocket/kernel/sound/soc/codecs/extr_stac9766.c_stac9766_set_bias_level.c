
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AC97_POWERDOWN ;




 int stac9766_ac97_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int stac9766_set_bias_level(struct snd_soc_codec *codec,
       enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
 case 129:
 case 128:
  stac9766_ac97_write(codec, AC97_POWERDOWN, 0x0000);
  break;
 case 131:

  stac9766_ac97_write(codec, AC97_POWERDOWN, 0xffff);
  break;
 }
 codec->bias_level = level;
 return 0;
}
