
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int chan; } ;
struct atmel_abdac {TYPE_1__ dma; int flags; } ;


 int DMA_READY ;
 int dw_dma_cyclic_free (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct atmel_abdac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int atmel_abdac_hw_free(struct snd_pcm_substream *substream)
{
 struct atmel_abdac *dac = snd_pcm_substream_chip(substream);
 if (test_and_clear_bit(DMA_READY, &dac->flags))
  dw_dma_cyclic_free(dac->dma.chan);
 return snd_pcm_lib_free_pages(substream);
}
