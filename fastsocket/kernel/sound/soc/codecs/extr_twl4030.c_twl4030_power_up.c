
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_priv {scalar_t__ codec_powered; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;


 int TWL4030_CNCL_OFFSET_START ;
 int TWL4030_MODULE_AUDIO_VOICE ;
 int TWL4030_REG_ANAMICL ;
 int TWL4030_REG_MISC_SET_1 ;
 int TWL4030_SMOOTH_ANAVOL_EN ;
 int twl4030_codec_enable (struct snd_soc_codec*,int) ;
 int twl4030_i2c_read_u8 (int ,int*,int ) ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,int) ;
 int twl4030_write_reg_cache (struct snd_soc_codec*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void twl4030_power_up(struct snd_soc_codec *codec)
{
 struct twl4030_priv *twl4030 = codec->private_data;
 u8 anamicl, regmisc1, byte;
 int i = 0;

 if (twl4030->codec_powered)
  return;


 twl4030_codec_enable(codec, 1);


 anamicl = twl4030_read_reg_cache(codec, TWL4030_REG_ANAMICL);
 twl4030_write(codec, TWL4030_REG_ANAMICL,
  anamicl | TWL4030_CNCL_OFFSET_START);


 do {

  udelay(2000);
  twl4030_i2c_read_u8(TWL4030_MODULE_AUDIO_VOICE, &byte,
        TWL4030_REG_ANAMICL);
 } while ((i++ < 100) &&
   ((byte & TWL4030_CNCL_OFFSET_START) ==
    TWL4030_CNCL_OFFSET_START));


 twl4030_write_reg_cache(codec, TWL4030_REG_ANAMICL, byte);


 regmisc1 = twl4030_read_reg_cache(codec, TWL4030_REG_MISC_SET_1);
 twl4030_write(codec, TWL4030_REG_MISC_SET_1,
  regmisc1 | TWL4030_SMOOTH_ANAVOL_EN);


 twl4030_codec_enable(codec, 0);
 twl4030_codec_enable(codec, 1);
}
