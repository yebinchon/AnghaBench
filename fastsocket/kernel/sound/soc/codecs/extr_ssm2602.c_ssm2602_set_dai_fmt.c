
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



 int SSM2602_IFACE ;
 int ssm2602_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ssm2602_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 iface = 0;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  iface |= 0x0040;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  iface |= 0x0002;
  break;
 case 128:
  break;
 case 131:
  iface |= 0x0001;
  break;
 case 136:
  iface |= 0x0013;
  break;
 case 135:
  iface |= 0x0003;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  iface |= 0x0090;
  break;
 case 132:
  iface |= 0x0080;
  break;
 case 130:
  iface |= 0x0010;
  break;
 default:
  return -EINVAL;
 }


 ssm2602_write(codec, SSM2602_IFACE, iface);
 return 0;
}
