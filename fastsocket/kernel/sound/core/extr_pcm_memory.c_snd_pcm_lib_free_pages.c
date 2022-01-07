
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * dma_buffer_p; int * dma_area; } ;


 int EINVAL ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int kfree (int *) ;
 int snd_dma_free_pages (int *) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

int snd_pcm_lib_free_pages(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;

 if (PCM_RUNTIME_CHECK(substream))
  return -EINVAL;
 runtime = substream->runtime;
 if (runtime->dma_area == ((void*)0))
  return 0;
 if (runtime->dma_buffer_p != &substream->dma_buffer) {

  snd_dma_free_pages(runtime->dma_buffer_p);
  kfree(runtime->dma_buffer_p);
 }
 snd_pcm_set_runtime_buffer(substream, ((void*)0));
 return 0;
}
