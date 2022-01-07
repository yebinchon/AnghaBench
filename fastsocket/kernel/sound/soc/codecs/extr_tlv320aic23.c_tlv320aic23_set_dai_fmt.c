
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int TLV320AIC23_DIGT_FMT ;
 int TLV320AIC23_FOR_DSP ;
 int TLV320AIC23_FOR_I2S ;
 int TLV320AIC23_FOR_LJUST ;
 int TLV320AIC23_LRP_ON ;
 int TLV320AIC23_MS_MASTER ;
 int tlv320aic23_read_reg_cache (struct snd_soc_codec*,int ) ;
 int tlv320aic23_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int tlv320aic23_set_dai_fmt(struct snd_soc_dai *codec_dai,
       unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 iface_reg;

 iface_reg =
     tlv320aic23_read_reg_cache(codec, TLV320AIC23_DIGT_FMT) & (~0x03);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 134:
  iface_reg |= TLV320AIC23_MS_MASTER;
  break;
 case 133:
  break;
 default:
  return -EINVAL;

 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  iface_reg |= TLV320AIC23_FOR_I2S;
  break;
 case 132:
  iface_reg |= TLV320AIC23_LRP_ON;
 case 131:
  iface_reg |= TLV320AIC23_FOR_DSP;
  break;
 case 128:
  break;
 case 129:
  iface_reg |= TLV320AIC23_FOR_LJUST;
  break;
 default:
  return -EINVAL;

 }

 tlv320aic23_write(codec, TLV320AIC23_DIGT_FMT, iface_reg);

 return 0;
}
