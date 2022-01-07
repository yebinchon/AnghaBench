
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM9081_DAC_DIGITAL_2 ;
 unsigned int WM9081_DAC_MUTE ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int wm9081_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int reg;

 reg = snd_soc_read(codec, WM9081_DAC_DIGITAL_2);

 if (mute)
  reg |= WM9081_DAC_MUTE;
 else
  reg &= ~WM9081_DAC_MUTE;

 snd_soc_write(codec, WM9081_DAC_DIGITAL_2, reg);

 return 0;
}
