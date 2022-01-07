
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AC97_EXTENDED_MID ;
 int AC97_EXTENDED_MSTATUS ;
 int AC97_POWERDOWN ;




 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm9713_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;

 switch (level) {
 case 130:

  reg = ac97_read(codec, AC97_EXTENDED_MID) & 0x1bff;
  ac97_write(codec, AC97_EXTENDED_MID, reg);
  break;
 case 129:
  break;
 case 128:

  reg = ac97_read(codec, AC97_EXTENDED_MID) & 0x3bff;
  ac97_write(codec, AC97_EXTENDED_MID, reg);
  ac97_write(codec, AC97_POWERDOWN, 0x0000);
  break;
 case 131:

  ac97_write(codec, AC97_EXTENDED_MID, 0xffff);
  ac97_write(codec, AC97_EXTENDED_MSTATUS, 0xffff);
  ac97_write(codec, AC97_POWERDOWN, 0xffff);
  break;
 }
 codec->bias_level = level;
 return 0;
}
