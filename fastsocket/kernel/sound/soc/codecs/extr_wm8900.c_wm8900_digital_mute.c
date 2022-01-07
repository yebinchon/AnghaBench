
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8900_REG_DACCTRL ;
 int WM8900_REG_DACCTRL_MUTE ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int wm8900_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 reg = snd_soc_read(codec, WM8900_REG_DACCTRL);

 if (mute)
  reg |= WM8900_REG_DACCTRL_MUTE;
 else
  reg &= ~WM8900_REG_DACCTRL_MUTE;

 snd_soc_write(codec, WM8900_REG_DACCTRL, reg);

 return 0;
}
