
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



 int WM8903_AIF_BCLK_INV ;
 int WM8903_AIF_FMT_MASK ;
 int WM8903_AIF_LRCLK_INV ;
 int WM8903_AUDIO_INTERFACE_1 ;
 int WM8903_BCLK_DIR ;
 int WM8903_LRCLK_DIR ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8903_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 aif1 = snd_soc_read(codec, WM8903_AUDIO_INTERFACE_1);

 aif1 &= ~(WM8903_LRCLK_DIR | WM8903_BCLK_DIR | WM8903_AIF_FMT_MASK |
    WM8903_AIF_LRCLK_INV | WM8903_AIF_BCLK_INV);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  break;
 case 138:
  aif1 |= WM8903_LRCLK_DIR;
  break;
 case 140:
  aif1 |= WM8903_LRCLK_DIR | WM8903_BCLK_DIR;
  break;
 case 139:
  aif1 |= WM8903_BCLK_DIR;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
  aif1 |= 0x3;
  break;
 case 135:
  aif1 |= 0x3 | WM8903_AIF_LRCLK_INV;
  break;
 case 134:
  aif1 |= 0x2;
  break;
 case 128:
  aif1 |= 0x1;
  break;
 case 131:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
 case 135:

  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 132:
   aif1 |= WM8903_AIF_BCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 134:
 case 128:
 case 131:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   aif1 |= WM8903_AIF_BCLK_INV | WM8903_AIF_LRCLK_INV;
   break;
  case 132:
   aif1 |= WM8903_AIF_BCLK_INV;
   break;
  case 130:
   aif1 |= WM8903_AIF_LRCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8903_AUDIO_INTERFACE_1, aif1);

 return 0;
}
