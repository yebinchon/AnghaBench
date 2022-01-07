
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int period_index; int lock; } ;


 int OMAP_DMA_BLOCK_IRQ ;
 int OMAP_DMA_LAST_IRQ ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ cpu_is_omap1510 () ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_pcm_dma_irq(int ch, u16 stat, void *data)
{
 struct snd_pcm_substream *substream = data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct omap_runtime_data *prtd = runtime->private_data;
 unsigned long flags;

 if ((cpu_is_omap1510()) &&
   (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)) {






  spin_lock_irqsave(&prtd->lock, flags);
  if ((stat == OMAP_DMA_LAST_IRQ) &&
    (prtd->period_index == runtime->periods - 1)) {

   spin_unlock_irqrestore(&prtd->lock, flags);
   return;
  }
  if (prtd->period_index >= 0) {
   if (stat & OMAP_DMA_BLOCK_IRQ) {

    prtd->period_index = 0;
   } else if (stat & OMAP_DMA_LAST_IRQ) {

    prtd->period_index = runtime->periods - 1;
   } else if (++prtd->period_index >= runtime->periods) {

    prtd->period_index = 0;
   }
  }
  spin_unlock_irqrestore(&prtd->lock, flags);
 }

 snd_pcm_period_elapsed(substream);
}
