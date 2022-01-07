
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; TYPE_3__* runtime; } ;
struct s6000_runtime_data {int lock; } ;
struct s6000_pcm_dma_params {int dma_in; int dma_out; } ;
struct TYPE_6__ {struct s6000_runtime_data* private_data; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {struct s6000_pcm_dma_params* dma_data; } ;


 int DMA_INDEX_CHNL (int ) ;
 int DMA_MASK_DMAC (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int s6dmac_disable_chan (int ,int ) ;
 int s6dmac_set_terminal_count (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s6000_pcm_stop(struct snd_pcm_substream *substream)
{
 struct s6000_runtime_data *prtd = substream->runtime->private_data;
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
 unsigned long flags;
 u32 channel;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  channel = par->dma_out;
 else
  channel = par->dma_in;

 s6dmac_set_terminal_count(DMA_MASK_DMAC(channel),
      DMA_INDEX_CHNL(channel), 0);

 spin_lock_irqsave(&prtd->lock, flags);

 s6dmac_disable_chan(DMA_MASK_DMAC(channel), DMA_INDEX_CHNL(channel));

 spin_unlock_irqrestore(&prtd->lock, flags);

 return 0;
}
