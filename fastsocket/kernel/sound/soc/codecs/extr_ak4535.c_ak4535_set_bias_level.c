
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; int dai; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AK4535_PM1 ;
 int AK4535_PM2 ;




 int ak4535_mute (int ,int) ;
 int ak4535_read_reg_cache (struct snd_soc_codec*,int ) ;
 int ak4535_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ak4535_set_bias_level(struct snd_soc_codec *codec,
 enum snd_soc_bias_level level)
{
 u16 i;

 switch (level) {
 case 130:
  ak4535_mute(codec->dai, 0);
  break;
 case 129:
  ak4535_mute(codec->dai, 1);
  break;
 case 128:
  i = ak4535_read_reg_cache(codec, AK4535_PM1);
  ak4535_write(codec, AK4535_PM1, i | 0x80);
  i = ak4535_read_reg_cache(codec, AK4535_PM2);
  ak4535_write(codec, AK4535_PM2, i & (~0x80));
  break;
 case 131:
  i = ak4535_read_reg_cache(codec, AK4535_PM1);
  ak4535_write(codec, AK4535_PM1, i & (~0x80));
  break;
 }
 codec->bias_level = level;
 return 0;
}
