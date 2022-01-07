
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; int dma_addr; struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int dma_ch; struct omap_pcm_dma_data* dma_data; } ;
struct omap_pcm_dma_data {int port_addr; int sync_mode; int dma_req; } ;
struct omap_dma_channel_params {int elem_count; int frame_count; void* src_port; int dst_start; int src_start; int src_or_dst_synch; void* dst_amode; void* src_amode; void* dst_port; int sync_mode; int trigger; int data_type; } ;
typedef int dma_params ;


 void* OMAP_DMA_AMODE_CONSTANT ;
 void* OMAP_DMA_AMODE_POST_INC ;
 int OMAP_DMA_BLOCK_IRQ ;
 int OMAP_DMA_DATA_BURST_16 ;
 int OMAP_DMA_DATA_TYPE_S16 ;
 int OMAP_DMA_DST_SYNC ;
 int OMAP_DMA_FRAME_IRQ ;
 int OMAP_DMA_LAST_IRQ ;
 void* OMAP_DMA_PORT_MPUI ;
 int OMAP_DMA_SRC_SYNC ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int cpu_class_is_omap1 () ;
 scalar_t__ cpu_is_omap1510 () ;
 int memset (struct omap_dma_channel_params*,int ,int) ;
 int omap_enable_dma_irq (int ,int) ;
 int omap_set_dma_dest_burst_mode (int ,int ) ;
 int omap_set_dma_params (int ,struct omap_dma_channel_params*) ;
 int omap_set_dma_src_burst_mode (int ,int ) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static int omap_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct omap_runtime_data *prtd = runtime->private_data;
 struct omap_pcm_dma_data *dma_data = prtd->dma_data;
 struct omap_dma_channel_params dma_params;



 if (!prtd->dma_data)
  return 0;

 memset(&dma_params, 0, sizeof(dma_params));




 dma_params.data_type = OMAP_DMA_DATA_TYPE_S16;
 dma_params.trigger = dma_data->dma_req;
 dma_params.sync_mode = dma_data->sync_mode;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  dma_params.src_amode = OMAP_DMA_AMODE_POST_INC;
  dma_params.dst_amode = OMAP_DMA_AMODE_CONSTANT;
  dma_params.src_or_dst_synch = OMAP_DMA_DST_SYNC;
  dma_params.src_start = runtime->dma_addr;
  dma_params.dst_start = dma_data->port_addr;
  dma_params.dst_port = OMAP_DMA_PORT_MPUI;
 } else {
  dma_params.src_amode = OMAP_DMA_AMODE_CONSTANT;
  dma_params.dst_amode = OMAP_DMA_AMODE_POST_INC;
  dma_params.src_or_dst_synch = OMAP_DMA_SRC_SYNC;
  dma_params.src_start = dma_data->port_addr;
  dma_params.dst_start = runtime->dma_addr;
  dma_params.src_port = OMAP_DMA_PORT_MPUI;
 }






 dma_params.elem_count = snd_pcm_lib_period_bytes(substream) / 2;
 dma_params.frame_count = runtime->periods;
 omap_set_dma_params(prtd->dma_ch, &dma_params);

 if ((cpu_is_omap1510()) &&
   (substream->stream == SNDRV_PCM_STREAM_PLAYBACK))
  omap_enable_dma_irq(prtd->dma_ch, OMAP_DMA_FRAME_IRQ |
         OMAP_DMA_LAST_IRQ | OMAP_DMA_BLOCK_IRQ);
 else
  omap_enable_dma_irq(prtd->dma_ch, OMAP_DMA_FRAME_IRQ);

 if (!(cpu_class_is_omap1())) {
  omap_set_dma_src_burst_mode(prtd->dma_ch,
      OMAP_DMA_DATA_BURST_16);
  omap_set_dma_dest_burst_mode(prtd->dma_ch,
      OMAP_DMA_DATA_BURST_16);
 }

 return 0;
}
