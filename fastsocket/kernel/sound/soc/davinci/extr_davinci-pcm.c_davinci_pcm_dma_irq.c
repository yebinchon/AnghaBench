
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct davinci_runtime_data {int lock; } ;
struct TYPE_2__ {struct davinci_runtime_data* private_data; } ;


 scalar_t__ DMA_COMPLETE ;
 int davinci_pcm_enqueue_dma (struct snd_pcm_substream*) ;
 int pr_debug (char*,unsigned int,scalar_t__) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void davinci_pcm_dma_irq(unsigned lch, u16 ch_status, void *data)
{
 struct snd_pcm_substream *substream = data;
 struct davinci_runtime_data *prtd = substream->runtime->private_data;

 pr_debug("davinci_pcm: lch=%d, status=0x%x\n", lch, ch_status);

 if (unlikely(ch_status != DMA_COMPLETE))
  return;

 if (snd_pcm_running(substream)) {
  snd_pcm_period_elapsed(substream);

  spin_lock(&prtd->lock);
  davinci_pcm_enqueue_dma(substream);
  spin_unlock(&prtd->lock);
 }
}
