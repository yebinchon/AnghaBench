
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int tx_chan; } ;
struct atmel_ac97c {TYPE_1__ dma; int flags; } ;


 int DMA_TX_READY ;
 int dw_dma_cyclic_free (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int atmel_ac97c_playback_hw_free(struct snd_pcm_substream *substream)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 if (test_and_clear_bit(DMA_TX_READY, &chip->flags))
  dw_dma_cyclic_free(chip->dma.tx_chan);
 return snd_pcm_lib_free_pages(substream);
}
