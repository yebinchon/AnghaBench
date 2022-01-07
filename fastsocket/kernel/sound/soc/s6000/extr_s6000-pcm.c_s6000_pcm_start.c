
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {TYPE_3__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; TYPE_1__* runtime; } ;
struct s6000_runtime_data {int lock; } ;
struct s6000_pcm_dma_params {int dma_in; int dma_out; } ;
struct TYPE_6__ {TYPE_2__* cpu_dai; } ;
struct TYPE_5__ {struct s6000_pcm_dma_params* dma_data; } ;
struct TYPE_4__ {struct s6000_runtime_data* private_data; } ;


 int DMA_INDEX_CHNL (int ) ;
 int DMA_MASK_DMAC (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int s6000_pcm_enqueue_dma (struct snd_pcm_substream*) ;
 int s6dmac_enable_chan (int ,int ,int,int ,int,int,int ,int ,int ,int,int,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s6000_pcm_start(struct snd_pcm_substream *substream)
{
 struct s6000_runtime_data *prtd = substream->runtime->private_data;
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
 unsigned long flags;
 int srcinc;
 u32 dma;

 spin_lock_irqsave(&prtd->lock, flags);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  srcinc = 1;
  dma = par->dma_out;
 } else {
  srcinc = 0;
  dma = par->dma_in;
 }
 s6dmac_enable_chan(DMA_MASK_DMAC(dma), DMA_INDEX_CHNL(dma),
      1 ,
      0 ,
      srcinc ,
      srcinc^1 ,
      0 ,
      0 ,
      0 ,
      4 ,
      -1 ,
      0 ,
      0 ,
      1 );

 s6000_pcm_enqueue_dma(substream);
 s6000_pcm_enqueue_dma(substream);

 spin_unlock_irqrestore(&prtd->lock, flags);

 return 0;
}
