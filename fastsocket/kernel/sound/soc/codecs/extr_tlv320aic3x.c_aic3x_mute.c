
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int LDAC_VOL ;
 int MUTE_ON ;
 int RDAC_VOL ;
 int aic3x_read_reg_cache (struct snd_soc_codec*,int ) ;
 int aic3x_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int aic3x_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u8 ldac_reg = aic3x_read_reg_cache(codec, LDAC_VOL) & ~MUTE_ON;
 u8 rdac_reg = aic3x_read_reg_cache(codec, RDAC_VOL) & ~MUTE_ON;

 if (mute) {
  aic3x_write(codec, LDAC_VOL, ldac_reg | MUTE_ON);
  aic3x_write(codec, RDAC_VOL, rdac_reg | MUTE_ON);
 } else {
  aic3x_write(codec, LDAC_VOL, ldac_reg);
  aic3x_write(codec, RDAC_VOL, rdac_reg);
 }

 return 0;
}
