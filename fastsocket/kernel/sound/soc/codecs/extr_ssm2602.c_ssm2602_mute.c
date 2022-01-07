
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int APDIGI_ENABLE_DAC_MUTE ;
 int SSM2602_APDIGI ;
 int ssm2602_read_reg_cache (struct snd_soc_codec*,int ) ;
 int ssm2602_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ssm2602_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 mute_reg = ssm2602_read_reg_cache(codec, SSM2602_APDIGI) & ~APDIGI_ENABLE_DAC_MUTE;
 if (mute)
  ssm2602_write(codec, SSM2602_APDIGI,
    mute_reg | APDIGI_ENABLE_DAC_MUTE);
 else
  ssm2602_write(codec, SSM2602_APDIGI, mute_reg);
 return 0;
}
