
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; int * dma_area; struct snd_cs46xx_pcm* private_data; } ;
struct TYPE_2__ {int * area; } ;
struct snd_cs46xx_pcm {TYPE_1__ hw_buf; } ;


 int ENXIO ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs46xx_playback_hw_free(struct snd_pcm_substream *substream)
{

 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_cs46xx_pcm *cpcm;

 cpcm = runtime->private_data;



 if (!cpcm) return -ENXIO;

 if (runtime->dma_area != cpcm->hw_buf.area)
  snd_pcm_lib_free_pages(substream);

 runtime->dma_area = ((void*)0);
 runtime->dma_addr = 0;
 runtime->dma_bytes = 0;

 return 0;
}
