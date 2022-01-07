
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_4__ {scalar_t__ channels_min; } ;
struct snd_soc_dai {TYPE_2__ capture; TYPE_1__ playback; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {TYPE_3__* dev; } ;
struct TYPE_6__ {scalar_t__ coherent_dma_mask; int * dma_mask; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_pcm_dmamask ;
 int omap_pcm_preallocate_dma_buffer (struct snd_pcm*,int ) ;

__attribute__((used)) static int omap_pcm_new(struct snd_card *card, struct snd_soc_dai *dai,
   struct snd_pcm *pcm)
{
 int ret = 0;

 if (!card->dev->dma_mask)
  card->dev->dma_mask = &omap_pcm_dmamask;
 if (!card->dev->coherent_dma_mask)
  card->dev->coherent_dma_mask = DMA_BIT_MASK(64);

 if (dai->playback.channels_min) {
  ret = omap_pcm_preallocate_dma_buffer(pcm,
   SNDRV_PCM_STREAM_PLAYBACK);
  if (ret)
   goto out;
 }

 if (dai->capture.channels_min) {
  ret = omap_pcm_preallocate_dma_buffer(pcm,
   SNDRV_PCM_STREAM_CAPTURE);
  if (ret)
   goto out;
 }

out:
 return ret;
}
