
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int * dma_data; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int ENODEV ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int s3c2443_ac97_mic_mono_in ;

__attribute__((used)) static int s3c2443_ac97_hw_mic_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return -ENODEV;
 else
  cpu_dai->dma_data = &s3c2443_ac97_mic_mono_in;

 return 0;
}
