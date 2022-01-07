
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int TLV320AIC23_ACTIVE ;
 int TLV320AIC23_PWR ;
 int tlv320aic23_read_reg_cache (struct snd_soc_codec*,int ) ;
 int tlv320aic23_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int tlv320aic23_set_bias_level(struct snd_soc_codec *codec,
          enum snd_soc_bias_level level)
{
 u16 reg = tlv320aic23_read_reg_cache(codec, TLV320AIC23_PWR) & 0xff7f;

 switch (level) {
 case 130:

  tlv320aic23_write(codec, TLV320AIC23_PWR, reg);
  break;
 case 129:
  break;
 case 128:

  tlv320aic23_write(codec, TLV320AIC23_PWR, reg | 0x0040);
  break;
 case 131:

  tlv320aic23_write(codec, TLV320AIC23_ACTIVE, 0x0);
  tlv320aic23_write(codec, TLV320AIC23_PWR, 0xffff);
  break;
 }
 codec->bias_level = level;
 return 0;
}
