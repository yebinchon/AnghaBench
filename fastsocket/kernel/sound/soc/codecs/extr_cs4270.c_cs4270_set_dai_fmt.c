
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dev; struct cs4270_private* private_data; } ;
struct cs4270_private {unsigned int mode; int slave_mode; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int cs4270_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int format)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct cs4270_private *cs4270 = codec->private_data;
 int ret = 0;


 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
 case 128:
  cs4270->mode = format & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  dev_err(codec->dev, "invalid dai format\n");
  ret = -EINVAL;
 }


 switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
 case 130:
  cs4270->slave_mode = 1;
  break;
 case 131:
  cs4270->slave_mode = 0;
  break;
 default:

  ret = -EINVAL;
 }

 return ret;
}
