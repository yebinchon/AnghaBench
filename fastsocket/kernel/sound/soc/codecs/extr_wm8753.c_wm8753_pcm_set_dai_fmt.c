
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



 int WM8753_IOCTL ;
 int WM8753_PCM ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_pcm_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 voice, ioctl;

 voice = wm8753_read_reg_cache(codec, WM8753_PCM) & 0x011f;
 ioctl = wm8753_read_reg_cache(codec, WM8753_IOCTL) & 0x015d;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  break;
 case 139:
  ioctl |= 0x2;
 case 138:
  voice |= 0x0040;
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
   voice |= 0x0080;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 134:
 case 128:
 case 131:
  voice &= ~0x0010;
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   voice |= 0x0090;
   break;
  case 132:
   voice |= 0x0080;
   break;
  case 130:
   voice |= 0x0010;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 wm8753_write(codec, WM8753_PCM, voice);
 wm8753_write(codec, WM8753_IOCTL, ioctl);
 return 0;
}
