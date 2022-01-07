
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int TWL4030_AIF_TRI_EN ;
 int TWL4030_REG_AUDIO_IF ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int twl4030_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 struct snd_soc_codec *codec = dai->codec;
 u8 reg = twl4030_read_reg_cache(codec, TWL4030_REG_AUDIO_IF);

 if (tristate)
  reg |= TWL4030_AIF_TRI_EN;
 else
  reg &= ~TWL4030_AIF_TRI_EN;

 return twl4030_write(codec, TWL4030_REG_AUDIO_IF, reg);
}
