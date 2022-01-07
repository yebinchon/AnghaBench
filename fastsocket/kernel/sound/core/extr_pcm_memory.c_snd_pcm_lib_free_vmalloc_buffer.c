
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * dma_area; } ;


 int EINVAL ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int vfree (int *) ;

int snd_pcm_lib_free_vmalloc_buffer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;

 if (PCM_RUNTIME_CHECK(substream))
  return -EINVAL;
 runtime = substream->runtime;
 vfree(runtime->dma_area);
 runtime->dma_area = ((void*)0);
 return 0;
}
