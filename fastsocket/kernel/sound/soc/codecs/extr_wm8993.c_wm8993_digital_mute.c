
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8993_DAC_CTRL ;
 unsigned int WM8993_DAC_MUTE ;
 unsigned int wm8993_read (struct snd_soc_codec*,int ) ;
 int wm8993_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int wm8993_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int reg;

 reg = wm8993_read(codec, WM8993_DAC_CTRL);

 if (mute)
  reg |= WM8993_DAC_MUTE;
 else
  reg &= ~WM8993_DAC_MUTE;

 wm8993_write(codec, WM8993_DAC_CTRL, reg);

 return 0;
}
