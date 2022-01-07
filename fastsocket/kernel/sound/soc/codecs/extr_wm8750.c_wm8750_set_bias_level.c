
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8750_PWR1 ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8750_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 pwr_reg = snd_soc_read(codec, WM8750_PWR1) & 0xfe3e;

 switch (level) {
 case 130:

  snd_soc_write(codec, WM8750_PWR1, pwr_reg | 0x00c0);
  break;
 case 129:

  snd_soc_write(codec, WM8750_PWR1, pwr_reg | 0x01c1);
  break;
 case 128:

  snd_soc_write(codec, WM8750_PWR1, pwr_reg | 0x0141);
  break;
 case 131:
  snd_soc_write(codec, WM8750_PWR1, 0x0001);
  break;
 }
 codec->bias_level = level;
 return 0;
}
