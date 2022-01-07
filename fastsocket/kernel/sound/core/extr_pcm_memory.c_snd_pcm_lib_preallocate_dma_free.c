
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * area; } ;
struct snd_pcm_substream {TYPE_1__ dma_buffer; scalar_t__ dma_buf_id; } ;


 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_dma_reserve_buf (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void snd_pcm_lib_preallocate_dma_free(struct snd_pcm_substream *substream)
{
 if (substream->dma_buffer.area == ((void*)0))
  return;
 if (substream->dma_buf_id)
  snd_dma_reserve_buf(&substream->dma_buffer, substream->dma_buf_id);
 else
  snd_dma_free_pages(&substream->dma_buffer);
 substream->dma_buffer.area = ((void*)0);
}
