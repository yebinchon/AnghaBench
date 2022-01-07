
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct aic26* private_data; } ;
struct aic26 {int master; TYPE_1__* spi; int datfm; } ;
struct TYPE_2__ {int dev; } ;


 int AIC26_DATFM_DSP ;
 int AIC26_DATFM_I2S ;
 int AIC26_DATFM_LEFTJ ;
 int AIC26_DATFM_RIGHTJ ;
 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static int aic26_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct aic26 *aic26 = codec->private_data;

 dev_dbg(&aic26->spi->dev, "aic26_set_fmt(dai=%p, fmt==%i)\n",
  codec_dai, fmt);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133: aic26->master = 1; break;
 case 132: aic26->master = 0; break;
 default:
  dev_dbg(&aic26->spi->dev, "bad master\n"); return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130: aic26->datfm = AIC26_DATFM_I2S; break;
 case 131: aic26->datfm = AIC26_DATFM_DSP; break;
 case 128: aic26->datfm = AIC26_DATFM_RIGHTJ; break;
 case 129: aic26->datfm = AIC26_DATFM_LEFTJ; break;
 default:
  dev_dbg(&aic26->spi->dev, "bad format\n"); return -EINVAL;
 }

 return 0;
}
