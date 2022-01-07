
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;
 int WM8961_AUDIO_INTERFACE_2 ;

 int WM8961_BCLKDIV_MASK ;
 int WM8961_CLOCKING2 ;

 int WM8961_LRCLK_RATE_MASK ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8961_set_clkdiv(struct snd_soc_dai *dai, int div_id, int div)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 reg;

 switch (div_id) {
 case 129:
  reg = snd_soc_read(codec, WM8961_CLOCKING2);
  reg &= ~WM8961_BCLKDIV_MASK;
  reg |= div;
  snd_soc_write(codec, WM8961_CLOCKING2, reg);
  break;

 case 128:
  reg = snd_soc_read(codec, WM8961_AUDIO_INTERFACE_2);
  reg &= ~WM8961_LRCLK_RATE_MASK;
  reg |= div;
  snd_soc_write(codec, WM8961_AUDIO_INTERFACE_2, reg);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
