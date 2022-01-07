
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct snd_dma_buffer {int addr; int area; int bytes; TYPE_1__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_dma_buffer* dma_buffer_p; int * dma_area; } ;
struct device {int dummy; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (struct snd_dma_buffer*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

void devdma_hw_free(struct device *dev, struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_dma_buffer *buf = runtime->dma_buffer_p;

 if (runtime->dma_area == ((void*)0))
  return;

 if (buf != &substream->dma_buffer) {
  dma_free_coherent(buf->dev.dev, buf->bytes, buf->area, buf->addr);
  kfree(runtime->dma_buffer_p);
 }

 snd_pcm_set_runtime_buffer(substream, ((void*)0));
}
