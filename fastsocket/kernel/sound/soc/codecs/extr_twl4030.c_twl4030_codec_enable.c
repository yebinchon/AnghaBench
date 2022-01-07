
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_priv {int codec_powered; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;


 int TWL4030_CODECPDZ ;
 int TWL4030_REG_CODEC_MODE ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void twl4030_codec_enable(struct snd_soc_codec *codec, int enable)
{
 struct twl4030_priv *twl4030 = codec->private_data;
 u8 mode;

 if (enable == twl4030->codec_powered)
  return;

 mode = twl4030_read_reg_cache(codec, TWL4030_REG_CODEC_MODE);
 if (enable)
  mode |= TWL4030_CODECPDZ;
 else
  mode &= ~TWL4030_CODECPDZ;

 twl4030_write(codec, TWL4030_REG_CODEC_MODE, mode);
 twl4030->codec_powered = enable;



 udelay(10);
}
