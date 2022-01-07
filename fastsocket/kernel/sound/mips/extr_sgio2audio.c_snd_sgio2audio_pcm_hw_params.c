
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int * dma_area; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ENOMEM ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int vfree (int *) ;
 int * vmalloc_user (int) ;

__attribute__((used)) static int snd_sgio2audio_pcm_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int size = params_buffer_bytes(hw_params);


 if (runtime->dma_area)
  vfree(runtime->dma_area);
 runtime->dma_area = vmalloc_user(size);
 if (runtime->dma_area == ((void*)0))
  return -ENOMEM;
 runtime->dma_bytes = size;
 return 0;
}
