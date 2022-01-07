
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int * area; } ;
struct cs5535audio_dma {int * substream; TYPE_1__ desc_buf; } ;
struct cs5535audio {int dummy; } ;


 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static void cs5535audio_clear_dma_packets(struct cs5535audio *cs5535au,
       struct cs5535audio_dma *dma,
       struct snd_pcm_substream *substream)
{
 snd_dma_free_pages(&dma->desc_buf);
 dma->desc_buf.area = ((void*)0);
 dma->substream = ((void*)0);
}
