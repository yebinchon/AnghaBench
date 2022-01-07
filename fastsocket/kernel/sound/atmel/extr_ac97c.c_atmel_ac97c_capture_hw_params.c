
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int rx_chan; } ;
struct atmel_ac97c {int cur_format; int cur_rate; TYPE_1__ dma; int flags; } ;


 int DMA_RX_READY ;
 int dw_dma_cyclic_free (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opened_mutex ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int atmel_ac97c_capture_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *hw_params)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 int retval;

 retval = snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
 if (retval < 0)
  return retval;

 if (retval == 1)
  if (test_and_clear_bit(DMA_RX_READY, &chip->flags))
   dw_dma_cyclic_free(chip->dma.rx_chan);


 mutex_lock(&opened_mutex);
 chip->cur_rate = params_rate(hw_params);
 chip->cur_format = params_format(hw_params);
 mutex_unlock(&opened_mutex);

 return retval;
}
