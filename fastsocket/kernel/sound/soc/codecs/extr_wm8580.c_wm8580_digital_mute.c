
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8580_DAC_CONTROL5 ;
 unsigned int WM8580_DAC_CONTROL5_MUTEALL ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int wm8580_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int reg;

 reg = snd_soc_read(codec, WM8580_DAC_CONTROL5);

 if (mute)
  reg |= WM8580_DAC_CONTROL5_MUTEALL;
 else
  reg &= ~WM8580_DAC_CONTROL5_MUTEALL;

 snd_soc_write(codec, WM8580_DAC_CONTROL5, reg);

 return 0;
}
