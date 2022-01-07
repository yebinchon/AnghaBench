
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dev; int type; } ;
struct snd_dma_buffer {size_t bytes; scalar_t__ area; int addr; int * private_data; TYPE_2__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_3__* card; TYPE_1__* streams; } ;
struct TYPE_10__ {size_t buffer_bytes_max; } ;
struct TYPE_9__ {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct snd_pcm_substream* substream; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_5__ bf5xx_pcm_hardware ;
 scalar_t__ dma_alloc_coherent (int ,size_t,int *,int ) ;
 int pr_err (char*) ;
 TYPE_4__* sport_handle ;

__attribute__((used)) static int bf5xx_pcm_preallocate_dma_buffer(struct snd_pcm *pcm, int stream)
{
 struct snd_pcm_substream *substream = pcm->streams[stream].substream;
 struct snd_dma_buffer *buf = &substream->dma_buffer;
 size_t size = bf5xx_pcm_hardware.buffer_bytes_max;

 buf->dev.type = SNDRV_DMA_TYPE_DEV;
 buf->dev.dev = pcm->card->dev;
 buf->private_data = ((void*)0);
 buf->area = dma_alloc_coherent(pcm->card->dev, size * 4,
  &buf->addr, GFP_KERNEL);
 if (!buf->area) {
  pr_err("Failed to allocate dma memory 			Please increase uncached DMA memory region\n");

  return -ENOMEM;
 }
 buf->bytes = size;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  sport_handle->tx_buf = buf->area;
 else
  sport_handle->rx_buf = buf->area;

 return 0;
}
