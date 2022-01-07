
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int periods; scalar_t__ dma_addr; struct davinci_runtime_data* private_data; } ;
struct davinci_runtime_data {int slave_lch; unsigned int period; TYPE_1__* params; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {unsigned int data_type; unsigned short acnt; scalar_t__ dma_addr; } ;


 int ASYNC ;
 int INCR ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int W8BIT ;
 int edma_set_dest (int,scalar_t__,int ,int ) ;
 int edma_set_dest_index (int,unsigned short,int ) ;
 int edma_set_src (int,scalar_t__,int ,int ) ;
 int edma_set_src_index (int,unsigned short,int ) ;
 int edma_set_transfer_params (int,unsigned short,unsigned int,int,int ,int ) ;
 int pr_debug (char*,int,scalar_t__,unsigned int) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void davinci_pcm_enqueue_dma(struct snd_pcm_substream *substream)
{
 struct davinci_runtime_data *prtd = substream->runtime->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int lch = prtd->slave_lch;
 unsigned int period_size;
 unsigned int dma_offset;
 dma_addr_t dma_pos;
 dma_addr_t src, dst;
 unsigned short src_bidx, dst_bidx;
 unsigned int data_type;
 unsigned short acnt;
 unsigned int count;

 period_size = snd_pcm_lib_period_bytes(substream);
 dma_offset = prtd->period * period_size;
 dma_pos = runtime->dma_addr + dma_offset;

 pr_debug("davinci_pcm: audio_set_dma_params_play channel = %d "
  "dma_ptr = %x period_size=%x\n", lch, dma_pos, period_size);

 data_type = prtd->params->data_type;
 count = period_size / data_type;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  src = dma_pos;
  dst = prtd->params->dma_addr;
  src_bidx = data_type;
  dst_bidx = 0;
 } else {
  src = prtd->params->dma_addr;
  dst = dma_pos;
  src_bidx = 0;
  dst_bidx = data_type;
 }

 acnt = prtd->params->acnt;
 edma_set_src(lch, src, INCR, W8BIT);
 edma_set_dest(lch, dst, INCR, W8BIT);
 edma_set_src_index(lch, src_bidx, 0);
 edma_set_dest_index(lch, dst_bidx, 0);
 edma_set_transfer_params(lch, acnt, count, 1, 0, ASYNC);

 prtd->period++;
 if (unlikely(prtd->period >= runtime->periods))
  prtd->period = 0;
}
