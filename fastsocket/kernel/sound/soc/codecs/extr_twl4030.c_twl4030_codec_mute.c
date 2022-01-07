
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_priv {int codec_muted; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;


 int TWL4030_APLL_EN ;
 int TWL4030_REG_APLL_CTL ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static void twl4030_codec_mute(struct snd_soc_codec *codec, int mute)
{
 struct twl4030_priv *twl4030 = codec->private_data;
 u8 reg_val;

 if (mute == twl4030->codec_muted)
  return;

 if (mute) {

  reg_val = twl4030_read_reg_cache(codec, TWL4030_REG_APLL_CTL);
  reg_val &= ~TWL4030_APLL_EN;
  twl4030_write(codec, TWL4030_REG_APLL_CTL, reg_val);
 } else {

  reg_val = twl4030_read_reg_cache(codec, TWL4030_REG_APLL_CTL);
  reg_val |= TWL4030_APLL_EN;
  twl4030_write(codec, TWL4030_REG_APLL_CTL, reg_val);
 }

 twl4030->codec_muted = mute;
}
