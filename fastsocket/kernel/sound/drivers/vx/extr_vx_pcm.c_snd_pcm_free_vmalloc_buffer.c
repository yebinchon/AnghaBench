
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * dma_area; } ;


 int vfree (int *) ;

__attribute__((used)) static int snd_pcm_free_vmalloc_buffer(struct snd_pcm_substream *subs)
{
 struct snd_pcm_runtime *runtime = subs->runtime;

 vfree(runtime->dma_area);
 runtime->dma_area = ((void*)0);
 return 0;
}
