
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; scalar_t__ dma_area; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_KERNEL ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 scalar_t__ __vmalloc (size_t,int ,int ) ;
 int vfree (scalar_t__) ;

int _snd_pcm_lib_alloc_vmalloc_buffer(struct snd_pcm_substream *substream,
          size_t size, gfp_t gfp_flags)
{
 struct snd_pcm_runtime *runtime;

 if (PCM_RUNTIME_CHECK(substream))
  return -EINVAL;
 runtime = substream->runtime;
 if (runtime->dma_area) {
  if (runtime->dma_bytes >= size)
   return 0;
  vfree(runtime->dma_area);
 }
 runtime->dma_area = __vmalloc(size, gfp_flags, PAGE_KERNEL);
 if (!runtime->dma_area)
  return -ENOMEM;
 runtime->dma_bytes = size;
 return 1;
}
