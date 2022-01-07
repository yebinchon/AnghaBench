
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;

 int WM8990_ADC_CLKDIV_MASK ;

 int WM8990_BCLK_DIV_MASK ;
 int WM8990_CLOCKING_1 ;
 int WM8990_CLOCKING_2 ;

 int WM8990_DAC_CLKDIV_MASK ;

 int WM8990_MCLK_DIV_MASK ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8990_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 switch (div_id) {
 case 128:
  reg = snd_soc_read(codec, WM8990_CLOCKING_2) &
   ~WM8990_MCLK_DIV_MASK;
  snd_soc_write(codec, WM8990_CLOCKING_2, reg | div);
  break;
 case 129:
  reg = snd_soc_read(codec, WM8990_CLOCKING_2) &
   ~WM8990_DAC_CLKDIV_MASK;
  snd_soc_write(codec, WM8990_CLOCKING_2, reg | div);
  break;
 case 131:
  reg = snd_soc_read(codec, WM8990_CLOCKING_2) &
   ~WM8990_ADC_CLKDIV_MASK;
  snd_soc_write(codec, WM8990_CLOCKING_2, reg | div);
  break;
 case 130:
  reg = snd_soc_read(codec, WM8990_CLOCKING_1) &
   ~WM8990_BCLK_DIV_MASK;
  snd_soc_write(codec, WM8990_CLOCKING_1, reg | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
