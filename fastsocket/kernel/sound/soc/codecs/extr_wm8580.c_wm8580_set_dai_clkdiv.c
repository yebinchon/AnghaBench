
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;

 int WM8580_CLKSEL ;
 unsigned int WM8580_CLKSEL_DAC_CLKSEL_MASK ;
 unsigned int WM8580_CLKSEL_DAC_CLKSEL_PLLA ;
 unsigned int WM8580_CLKSEL_DAC_CLKSEL_PLLB ;







 int WM8580_PLLB4 ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_MASK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_OSCCLK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_PLLACLK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_PLLBCLK ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_MASK ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_OSC ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_PLLA ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_PLLB ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;

__attribute__((used)) static int wm8580_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
     int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int reg;

 switch (div_id) {
 case 128:
  reg = snd_soc_read(codec, WM8580_PLLB4);
  reg &= ~WM8580_PLLB4_MCLKOUTSRC_MASK;

  switch (div) {
  case 134:

   break;

  case 131:
   reg |= WM8580_PLLB4_MCLKOUTSRC_PLLA;
   break;
  case 130:
   reg |= WM8580_PLLB4_MCLKOUTSRC_PLLB;
   break;

  case 132:
   reg |= WM8580_PLLB4_MCLKOUTSRC_OSC;
   break;

  default:
   return -EINVAL;
  }
  snd_soc_write(codec, WM8580_PLLB4, reg);
  break;

 case 129:
  reg = snd_soc_read(codec, WM8580_CLKSEL);
  reg &= ~WM8580_CLKSEL_DAC_CLKSEL_MASK;

  switch (div) {
  case 134:
   break;

  case 131:
   reg |= WM8580_CLKSEL_DAC_CLKSEL_PLLA;
   break;

  case 130:
   reg |= WM8580_CLKSEL_DAC_CLKSEL_PLLB;
   break;

  default:
   return -EINVAL;
  }
  snd_soc_write(codec, WM8580_CLKSEL, reg);
  break;

 case 135:
  reg = snd_soc_read(codec, WM8580_PLLB4);
  reg &= ~WM8580_PLLB4_CLKOUTSRC_MASK;

  switch (div) {
  case 133:
   break;

  case 131:
   reg |= WM8580_PLLB4_CLKOUTSRC_PLLACLK;
   break;

  case 130:
   reg |= WM8580_PLLB4_CLKOUTSRC_PLLBCLK;
   break;

  case 132:
   reg |= WM8580_PLLB4_CLKOUTSRC_OSCCLK;
   break;

  default:
   return -EINVAL;
  }
  snd_soc_write(codec, WM8580_PLLB4, reg);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
