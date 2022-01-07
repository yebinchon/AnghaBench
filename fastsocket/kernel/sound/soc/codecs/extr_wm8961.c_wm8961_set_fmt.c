
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



 int WM8961_AUDIO_INTERFACE_0 ;
 int WM8961_BCLKINV ;
 int WM8961_FORMAT_MASK ;
 int WM8961_LRP ;
 int WM8961_MS ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8961_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 aif = snd_soc_read(codec, WM8961_AUDIO_INTERFACE_0);

 aif &= ~(WM8961_BCLKINV | WM8961_LRP |
   WM8961_MS | WM8961_FORMAT_MASK);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  aif |= WM8961_MS;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  break;

 case 131:
  aif |= 1;
  break;

 case 134:
  aif |= 2;
  break;

 case 135:
  aif |= WM8961_LRP;
 case 136:
  aif |= 3;
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
  case 132:
   break;
  default:
   return -EINVAL;
  }
  break;

 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 130:
  aif |= WM8961_LRP;
  break;
 case 132:
  aif |= WM8961_BCLKINV;
  break;
 case 133:
  aif |= WM8961_BCLKINV | WM8961_LRP;
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_write(codec, WM8961_AUDIO_INTERFACE_0, aif);
}
