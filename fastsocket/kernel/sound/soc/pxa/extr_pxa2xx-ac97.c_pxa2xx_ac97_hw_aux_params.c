
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


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int pxa2xx_ac97_pcm_aux_mono_in ;
 int pxa2xx_ac97_pcm_aux_mono_out ;

__attribute__((used)) static int pxa2xx_ac97_hw_aux_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params,
         struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  cpu_dai->dma_data = &pxa2xx_ac97_pcm_aux_mono_out;
 else
  cpu_dai->dma_data = &pxa2xx_ac97_pcm_aux_mono_in;

 return 0;
}
