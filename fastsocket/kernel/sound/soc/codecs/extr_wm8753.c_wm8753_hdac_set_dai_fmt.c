
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 int WM8753_HIFI ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_hdac_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 hifi = wm8753_read_reg_cache(codec, WM8753_HIFI) & 0x01e0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  hifi |= 0x0002;
  break;
 case 128:
  break;
 case 129:
  hifi |= 0x0001;
  break;
 case 132:
  hifi |= 0x0003;
  break;
 case 131:
  hifi |= 0x0013;
  break;
 default:
  return -EINVAL;
 }

 wm8753_write(codec, WM8753_HIFI, hifi);
 return 0;
}
