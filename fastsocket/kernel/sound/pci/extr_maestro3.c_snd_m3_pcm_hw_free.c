
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct m3_dma {scalar_t__ buffer_addr; } ;
struct TYPE_2__ {struct m3_dma* private_data; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_m3_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct m3_dma *s;

 if (substream->runtime->private_data == ((void*)0))
  return 0;
 s = substream->runtime->private_data;
 snd_pcm_lib_free_pages(substream);
 s->buffer_addr = 0;
 return 0;
}
