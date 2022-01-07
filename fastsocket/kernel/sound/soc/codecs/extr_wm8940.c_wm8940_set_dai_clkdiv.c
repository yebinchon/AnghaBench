
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int WM8940_ADDCNTRL ;

 int WM8940_CLOCK ;


 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8940_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
     int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;
 int ret = 0;

 switch (div_id) {
 case 130:
  reg = snd_soc_read(codec, WM8940_CLOCK) & 0xFFEF3;
  ret = snd_soc_write(codec, WM8940_CLOCK, reg | (div << 2));
  break;
 case 129:
  reg = snd_soc_read(codec, WM8940_CLOCK) & 0xFF1F;
  ret = snd_soc_write(codec, WM8940_CLOCK, reg | (div << 5));
  break;
 case 128:
  reg = snd_soc_read(codec, WM8940_ADDCNTRL) & 0xFFCF;
  ret = snd_soc_write(codec, WM8940_ADDCNTRL, reg | (div << 4));
  break;
 }
 return ret;
}
