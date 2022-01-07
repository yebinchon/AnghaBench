
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;






 unsigned int WM8900_LRC_MASK ;

 int WM8900_REG_AUDIO3 ;
 int WM8900_REG_AUDIO4 ;
 int WM8900_REG_CLOCKING1 ;
 unsigned int WM8900_REG_CLOCKING1_BCLK_MASK ;
 unsigned int WM8900_REG_CLOCKING1_OPCLK_MASK ;
 int WM8900_REG_CLOCKING2 ;
 unsigned int WM8900_REG_CLOCKING2_ADC_CLKDIV ;
 unsigned int WM8900_REG_CLOCKING2_DAC_CLKDIV ;
 int WM8900_REG_DACCTRL ;
 unsigned int WM8900_REG_DACCTRL_AIF_LRCLKRATE ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8900_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
     int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int reg;

 switch (div_id) {
 case 132:
  reg = snd_soc_read(codec, WM8900_REG_CLOCKING1);
  snd_soc_write(codec, WM8900_REG_CLOCKING1,
        div | (reg & WM8900_REG_CLOCKING1_BCLK_MASK));
  break;
 case 128:
  reg = snd_soc_read(codec, WM8900_REG_CLOCKING1);
  snd_soc_write(codec, WM8900_REG_CLOCKING1,
        div | (reg & WM8900_REG_CLOCKING1_OPCLK_MASK));
  break;
 case 130:
  reg = snd_soc_read(codec, WM8900_REG_AUDIO4);
  snd_soc_write(codec, WM8900_REG_AUDIO4,
        div | (reg & WM8900_LRC_MASK));
  break;
 case 133:
  reg = snd_soc_read(codec, WM8900_REG_AUDIO3);
  snd_soc_write(codec, WM8900_REG_AUDIO3,
        div | (reg & WM8900_LRC_MASK));
  break;
 case 131:
  reg = snd_soc_read(codec, WM8900_REG_CLOCKING2);
  snd_soc_write(codec, WM8900_REG_CLOCKING2,
        div | (reg & WM8900_REG_CLOCKING2_DAC_CLKDIV));
  break;
 case 134:
  reg = snd_soc_read(codec, WM8900_REG_CLOCKING2);
  snd_soc_write(codec, WM8900_REG_CLOCKING2,
        div | (reg & WM8900_REG_CLOCKING2_ADC_CLKDIV));
  break;
 case 129:
  reg = snd_soc_read(codec, WM8900_REG_DACCTRL);
  snd_soc_write(codec, WM8900_REG_DACCTRL,
        div | (reg & WM8900_REG_DACCTRL_AIF_LRCLKRATE));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
