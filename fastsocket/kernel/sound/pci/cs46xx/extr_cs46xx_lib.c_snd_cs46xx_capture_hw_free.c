
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; int * dma_area; } ;
struct TYPE_3__ {int * area; } ;
struct TYPE_4__ {TYPE_1__ hw_buf; } ;
struct snd_cs46xx {TYPE_2__ capt; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs46xx_capture_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (runtime->dma_area != chip->capt.hw_buf.area)
  snd_pcm_lib_free_pages(substream);
 runtime->dma_area = ((void*)0);
 runtime->dma_addr = 0;
 runtime->dma_bytes = 0;

 return 0;
}
