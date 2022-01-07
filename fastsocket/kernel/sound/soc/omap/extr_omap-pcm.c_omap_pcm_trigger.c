
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int period_index; int lock; int dma_ch; struct omap_pcm_dma_data* dma_data; } ;
struct omap_pcm_dma_data {int (* set_threshold ) (struct snd_pcm_substream*) ;} ;


 int EINVAL ;






 int omap_start_dma (int ) ;
 int omap_stop_dma (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int omap_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct omap_runtime_data *prtd = runtime->private_data;
 struct omap_pcm_dma_data *dma_data = prtd->dma_data;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&prtd->lock, flags);
 switch (cmd) {
 case 130:
 case 131:
 case 132:
  prtd->period_index = 0;

  if (dma_data->set_threshold)
   dma_data->set_threshold(substream);

  omap_start_dma(prtd->dma_ch);
  break;

 case 129:
 case 128:
 case 133:
  prtd->period_index = -1;
  omap_stop_dma(prtd->dma_ch);
  break;
 default:
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(&prtd->lock, flags);

 return ret;
}
