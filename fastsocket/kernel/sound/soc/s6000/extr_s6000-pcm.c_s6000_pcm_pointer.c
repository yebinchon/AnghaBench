
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_addr; struct s6000_runtime_data* private_data; } ;
struct s6000_runtime_data {int lock; } ;
struct s6000_pcm_dma_params {int dma_in; int dma_out; } ;
typedef unsigned int snd_pcm_uframes_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;


 int DMA_INDEX_CHNL (int ) ;
 int DMA_MASK_DMAC (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 int s6dmac_cur_dst (int ,int ) ;
 int s6dmac_cur_src (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static snd_pcm_uframes_t s6000_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct s6000_runtime_data *prtd = runtime->private_data;
 unsigned long flags;
 unsigned int offset;
 dma_addr_t count;

 spin_lock_irqsave(&prtd->lock, flags);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  count = s6dmac_cur_src(DMA_MASK_DMAC(par->dma_out),
           DMA_INDEX_CHNL(par->dma_out));
 else
  count = s6dmac_cur_dst(DMA_MASK_DMAC(par->dma_in),
           DMA_INDEX_CHNL(par->dma_in));

 count -= runtime->dma_addr;

 spin_unlock_irqrestore(&prtd->lock, flags);

 offset = bytes_to_frames(runtime, count);
 if (unlikely(offset >= runtime->buffer_size))
  offset = 0;

 return offset;
}
