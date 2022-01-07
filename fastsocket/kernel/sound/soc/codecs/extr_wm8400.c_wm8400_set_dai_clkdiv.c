
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;

 int WM8400_ADC_CLKDIV_MASK ;

 int WM8400_BCLK_DIV_MASK ;
 int WM8400_CLOCKING_1 ;
 int WM8400_CLOCKING_2 ;

 int WM8400_DAC_CLKDIV_MASK ;

 int WM8400_MCLK_DIV_MASK ;
 int wm8400_read (struct snd_soc_codec*,int ) ;
 int wm8400_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8400_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 switch (div_id) {
 case 128:
  reg = wm8400_read(codec, WM8400_CLOCKING_2) &
   ~WM8400_MCLK_DIV_MASK;
  wm8400_write(codec, WM8400_CLOCKING_2, reg | div);
  break;
 case 129:
  reg = wm8400_read(codec, WM8400_CLOCKING_2) &
   ~WM8400_DAC_CLKDIV_MASK;
  wm8400_write(codec, WM8400_CLOCKING_2, reg | div);
  break;
 case 131:
  reg = wm8400_read(codec, WM8400_CLOCKING_2) &
   ~WM8400_ADC_CLKDIV_MASK;
  wm8400_write(codec, WM8400_CLOCKING_2, reg | div);
  break;
 case 130:
  reg = wm8400_read(codec, WM8400_CLOCKING_1) &
   ~WM8400_BCLK_DIV_MASK;
  wm8400_write(codec, WM8400_CLOCKING_1, reg | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
