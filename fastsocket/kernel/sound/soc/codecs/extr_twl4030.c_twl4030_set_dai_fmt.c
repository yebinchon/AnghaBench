
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int TWL4030_AIF_FORMAT ;
 int TWL4030_AIF_FORMAT_CODEC ;
 int TWL4030_AIF_FORMAT_TDM ;
 int TWL4030_AIF_SLAVE_EN ;
 int TWL4030_CLK256FS_EN ;
 int TWL4030_REG_AUDIO_IF ;
 int twl4030_codec_enable (struct snd_soc_codec*,int) ;
 int twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int twl4030_set_dai_fmt(struct snd_soc_dai *codec_dai,
        unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u8 old_format, format;


 old_format = twl4030_read_reg_cache(codec, TWL4030_REG_AUDIO_IF);
 format = old_format;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  format &= ~(TWL4030_AIF_SLAVE_EN);
  format &= ~(TWL4030_CLK256FS_EN);
  break;
 case 130:
  format |= TWL4030_AIF_SLAVE_EN;
  format |= TWL4030_CLK256FS_EN;
  break;
 default:
  return -EINVAL;
 }


 format &= ~TWL4030_AIF_FORMAT;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  format |= TWL4030_AIF_FORMAT_CODEC;
  break;
 case 129:
  format |= TWL4030_AIF_FORMAT_TDM;
  break;
 default:
  return -EINVAL;
 }

 if (format != old_format) {


  twl4030_codec_enable(codec, 0);


  twl4030_write(codec, TWL4030_REG_AUDIO_IF, format);


  twl4030_codec_enable(codec, 1);
 }

 return 0;
}
