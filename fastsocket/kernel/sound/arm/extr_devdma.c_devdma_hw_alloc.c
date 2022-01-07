
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; int type; } ;
struct snd_dma_buffer {size_t bytes; int * area; int * private_data; int addr; TYPE_1__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; struct snd_dma_buffer* dma_buffer_p; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_DEV ;
 int devdma_hw_free (struct device*,struct snd_pcm_substream*) ;
 int * dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int kfree (struct snd_dma_buffer*) ;
 struct snd_dma_buffer* kmalloc (int,int ) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,struct snd_dma_buffer*) ;

int devdma_hw_alloc(struct device *dev, struct snd_pcm_substream *substream, size_t size)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_dma_buffer *buf = runtime->dma_buffer_p;
 int ret = 0;

 if (buf) {
  if (buf->bytes >= size)
   goto out;
  devdma_hw_free(dev, substream);
 }

 if (substream->dma_buffer.area != ((void*)0) && substream->dma_buffer.bytes >= size) {
  buf = &substream->dma_buffer;
 } else {
  buf = kmalloc(sizeof(struct snd_dma_buffer), GFP_KERNEL);
  if (!buf)
   goto nomem;

  buf->dev.type = SNDRV_DMA_TYPE_DEV;
  buf->dev.dev = dev;
  buf->area = dma_alloc_coherent(dev, size, &buf->addr, GFP_KERNEL);
  buf->bytes = size;
  buf->private_data = ((void*)0);

  if (!buf->area)
   goto free;
 }
 snd_pcm_set_runtime_buffer(substream, buf);
 ret = 1;
 out:
 runtime->dma_bytes = size;
 return ret;

 free:
 kfree(buf);
 nomem:
 return -ENOMEM;
}
