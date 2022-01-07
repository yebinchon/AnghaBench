
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int PWR_CLK_OUT_PDN ;




 int SSM2602_ACTIVE ;
 int SSM2602_PWR ;
 int ssm2602_read_reg_cache (struct snd_soc_codec*,int ) ;
 int ssm2602_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ssm2602_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg = ssm2602_read_reg_cache(codec, SSM2602_PWR) & 0xff7f;

 switch (level) {
 case 130:

  ssm2602_write(codec, SSM2602_PWR, reg);
  break;
 case 129:
  break;
 case 128:

  ssm2602_write(codec, SSM2602_PWR, reg | PWR_CLK_OUT_PDN);
  break;
 case 131:

  ssm2602_write(codec, SSM2602_ACTIVE, 0);
  ssm2602_write(codec, SSM2602_PWR, 0xffff);
  break;

 }
 codec->bias_level = level;
 return 0;
}
