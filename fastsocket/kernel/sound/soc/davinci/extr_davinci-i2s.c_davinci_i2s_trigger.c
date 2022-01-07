
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct davinci_mcbsp_dev* private_data; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int pcr; } ;


 int DAVINCI_MCBSP_PCR_FSXM ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int davinci_mcbsp_start (struct davinci_mcbsp_dev*,struct snd_pcm_substream*) ;
 int davinci_mcbsp_stop (struct davinci_mcbsp_dev*,int) ;

__attribute__((used)) static int davinci_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 struct davinci_mcbsp_dev *dev = dai->private_data;
 int ret = 0;
 int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 if ((dev->pcr & DAVINCI_MCBSP_PCR_FSXM) == 0)
  return 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  davinci_mcbsp_start(dev, substream);
  break;
 case 129:
 case 128:
 case 133:
  davinci_mcbsp_stop(dev, playback);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
