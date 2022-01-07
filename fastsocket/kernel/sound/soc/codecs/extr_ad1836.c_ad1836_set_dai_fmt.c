
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

__attribute__((used)) static int ad1836_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {



 case 129:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {

 case 130:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
