
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {size_t channel_id; } ;
struct snd_ca0106 {int * spi_dac_reg; TYPE_2__* details; TYPE_1__* playback_channels; } ;
struct TYPE_4__ {scalar_t__ spi_dac; } ;
struct TYPE_3__ {scalar_t__ use; } ;


 size_t PCM_FRONT_CHANNEL ;
 int restore_spdif_bits (struct snd_ca0106*,size_t) ;
 int snd_ca0106_spi_write (struct snd_ca0106*,int ) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int * spi_dacd_bit ;
 int* spi_dacd_reg ;

__attribute__((used)) static int snd_ca0106_pcm_close_playback(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
        struct snd_ca0106_pcm *epcm = runtime->private_data;
 chip->playback_channels[epcm->channel_id].use = 0;

 restore_spdif_bits(chip, epcm->channel_id);

 if (chip->details->spi_dac && epcm->channel_id != PCM_FRONT_CHANNEL) {
  const int reg = spi_dacd_reg[epcm->channel_id];


  chip->spi_dac_reg[reg] |= spi_dacd_bit[epcm->channel_id];
  snd_ca0106_spi_write(chip, chip->spi_dac_reg[reg]);
 }

 return 0;
}
