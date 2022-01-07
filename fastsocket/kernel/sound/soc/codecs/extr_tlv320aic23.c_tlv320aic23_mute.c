
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int TLV320AIC23_DACM_MUTE ;
 int TLV320AIC23_DIGT ;
 int tlv320aic23_read_reg_cache (struct snd_soc_codec*,int ) ;
 int tlv320aic23_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int tlv320aic23_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 reg;

 reg = tlv320aic23_read_reg_cache(codec, TLV320AIC23_DIGT);
 if (mute)
  reg |= TLV320AIC23_DACM_MUTE;

 else
  reg &= ~TLV320AIC23_DACM_MUTE;

 tlv320aic23_write(codec, TLV320AIC23_DIGT, reg);

 return 0;
}
