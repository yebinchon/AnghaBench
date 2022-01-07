
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_addr; } ;


 scalar_t__ OXYGEN_DMA_MULTICH_COUNT ;
 scalar_t__ OXYGEN_DMA_MULTICH_TCOUNT ;
 unsigned int PCM_MULTICH ;
 scalar_t__* channel_base_registers ;
 unsigned int oxygen_substream_channel (struct snd_pcm_substream*) ;
 int oxygen_write16 (struct oxygen*,scalar_t__,int) ;
 int oxygen_write32 (struct oxygen*,scalar_t__,int) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int oxygen_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 unsigned int channel = oxygen_substream_channel(substream);
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (err < 0)
  return err;

 oxygen_write32(chip, channel_base_registers[channel],
         (u32)substream->runtime->dma_addr);
 if (channel == PCM_MULTICH) {
  oxygen_write32(chip, OXYGEN_DMA_MULTICH_COUNT,
          params_buffer_bytes(hw_params) / 4 - 1);
  oxygen_write32(chip, OXYGEN_DMA_MULTICH_TCOUNT,
          params_period_bytes(hw_params) / 4 - 1);
 } else {
  oxygen_write16(chip, channel_base_registers[channel] + 4,
          params_buffer_bytes(hw_params) / 4 - 1);
  oxygen_write16(chip, channel_base_registers[channel] + 6,
          params_period_bytes(hw_params) / 4 - 1);
 }
 return 0;
}
