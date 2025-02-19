
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int AK4535_MODE1 ;
 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 int ak4535_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ak4535_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u8 mode1 = 0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  mode1 = 0x0002;
  break;
 case 128:
  mode1 = 0x0001;
  break;
 default:
  return -EINVAL;
 }


 mode1 |= 0x4;

 ak4535_write(codec, AK4535_MODE1, mode1);
 return 0;
}
