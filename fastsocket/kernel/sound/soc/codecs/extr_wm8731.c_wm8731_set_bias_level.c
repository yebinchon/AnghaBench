
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8731_ACTIVE ;
 int WM8731_PWR ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8731_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:

  reg = snd_soc_read(codec, WM8731_PWR) & 0xff7f;
  snd_soc_write(codec, WM8731_PWR, reg | 0x0040);
  break;
 case 131:
  snd_soc_write(codec, WM8731_ACTIVE, 0x0);
  snd_soc_write(codec, WM8731_PWR, 0xffff);
  break;
 }
 codec->bias_level = level;
 return 0;
}
