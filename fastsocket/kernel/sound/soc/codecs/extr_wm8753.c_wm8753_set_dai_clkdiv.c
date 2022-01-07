
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;

 int WM8753_CLOCK ;

 int WM8753_SRATE2 ;

 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 switch (div_id) {
 case 129:
  reg = wm8753_read_reg_cache(codec, WM8753_CLOCK) & 0x003f;
  wm8753_write(codec, WM8753_CLOCK, reg | div);
  break;
 case 130:
  reg = wm8753_read_reg_cache(codec, WM8753_SRATE2) & 0x01c7;
  wm8753_write(codec, WM8753_SRATE2, reg | div);
  break;
 case 128:
  reg = wm8753_read_reg_cache(codec, WM8753_SRATE2) & 0x003f;
  wm8753_write(codec, WM8753_SRATE2, reg | div);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
