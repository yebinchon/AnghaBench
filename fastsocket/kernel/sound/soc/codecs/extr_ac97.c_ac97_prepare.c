
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int ac97; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ac97_set_rate (int ,int,int ) ;

__attribute__((used)) static int ac97_prepare(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;

 int reg = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
    AC97_PCM_FRONT_DAC_RATE : AC97_PCM_LR_ADC_RATE;
 return snd_ac97_set_rate(codec->ac97, reg, runtime->rate);
}
