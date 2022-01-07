
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8523_AIF_CTRL1 ;
 int WM8523_AIF_MSTR ;
 int WM8523_AIF_MSTR_MASK ;
 int WM8523_BCLK_INV ;
 int WM8523_BCLK_INV_MASK ;
 int WM8523_FMT_MASK ;
 int WM8523_LRCLK_INV ;
 int WM8523_LRCLK_INV_MASK ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8523_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 aifctrl1 = snd_soc_read(codec, WM8523_AIF_CTRL1);

 aifctrl1 &= ~(WM8523_BCLK_INV_MASK | WM8523_LRCLK_INV_MASK |
        WM8523_FMT_MASK | WM8523_AIF_MSTR_MASK);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  aifctrl1 |= WM8523_AIF_MSTR;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  aifctrl1 |= 0x0002;
  break;
 case 128:
  break;
 case 131:
  aifctrl1 |= 0x0001;
  break;
 case 136:
  aifctrl1 |= 0x0003;
  break;
 case 135:
  aifctrl1 |= 0x0023;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  aifctrl1 |= WM8523_BCLK_INV | WM8523_LRCLK_INV;
  break;
 case 132:
  aifctrl1 |= WM8523_BCLK_INV;
  break;
 case 130:
  aifctrl1 |= WM8523_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8523_AIF_CTRL1, aifctrl1);

 return 0;
}
