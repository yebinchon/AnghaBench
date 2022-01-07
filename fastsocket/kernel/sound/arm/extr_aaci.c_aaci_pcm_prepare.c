
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int period_size; scalar_t__ dma_area; struct aaci_runtime* private_data; } ;
struct aaci_runtime {int bytes; int period; void* start; void* ptr; void* end; } ;


 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static int aaci_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct aaci_runtime *aacirun = runtime->private_data;

 aacirun->start = (void *)runtime->dma_area;
 aacirun->end = aacirun->start + runtime->dma_bytes;
 aacirun->ptr = aacirun->start;
 aacirun->period =
 aacirun->bytes = frames_to_bytes(runtime, runtime->period_size);

 return 0;
}
