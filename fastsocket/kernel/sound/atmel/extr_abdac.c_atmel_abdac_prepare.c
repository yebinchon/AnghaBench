
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atmel_abdac {int flags; int sample_clk; } ;
struct TYPE_2__ {int rate; } ;


 int DMA_READY ;
 int DMA_TO_DEVICE ;
 int atmel_abdac_prepare_dma (struct atmel_abdac*,struct snd_pcm_substream*,int ) ;
 int clk_set_rate (int ,int) ;
 struct atmel_abdac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int atmel_abdac_prepare(struct snd_pcm_substream *substream)
{
 struct atmel_abdac *dac = snd_pcm_substream_chip(substream);
 int retval;

 retval = clk_set_rate(dac->sample_clk, 256 * substream->runtime->rate);
 if (retval)
  return retval;

 if (!test_bit(DMA_READY, &dac->flags))
  retval = atmel_abdac_prepare_dma(dac, substream, DMA_TO_DEVICE);

 return retval;
}
