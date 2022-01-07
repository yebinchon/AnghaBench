
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; int dma_addr; } ;
struct es1938 {unsigned int dma1_size; int dma1_shift; int dma1_start; } ;


 int ADC1 ;
 int ESS_CMD_ANALOGCONTROL ;
 int ESS_CMD_DMACNTRELOADH ;
 int ESS_CMD_DMACNTRELOADL ;
 int ESS_CMD_SETFORMAT2 ;
 int snd_es1938_bits (struct es1938*,int ,int,int) ;
 int snd_es1938_capture_setdma (struct es1938*) ;
 int snd_es1938_rate_set (struct es1938*,struct snd_pcm_substream*,int ) ;
 int snd_es1938_reset_fifo (struct es1938*) ;
 int snd_es1938_write (struct es1938*,int ,int) ;
 int snd_pcm_format_unsigned (int ) ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1938_capture_prepare(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int u, is8, mono;
 unsigned int size = snd_pcm_lib_buffer_bytes(substream);
 unsigned int count = snd_pcm_lib_period_bytes(substream);

 chip->dma1_size = size;
 chip->dma1_start = runtime->dma_addr;

 mono = (runtime->channels > 1) ? 0 : 1;
 is8 = snd_pcm_format_width(runtime->format) == 16 ? 0 : 1;
 u = snd_pcm_format_unsigned(runtime->format);

 chip->dma1_shift = 2 - mono - is8;

 snd_es1938_reset_fifo(chip);


 snd_es1938_bits(chip, ESS_CMD_ANALOGCONTROL, 0x03, (mono ? 2 : 1));


        snd_es1938_rate_set(chip, substream, ADC1);

 count = 0x10000 - count;
 snd_es1938_write(chip, ESS_CMD_DMACNTRELOADL, count & 0xff);
 snd_es1938_write(chip, ESS_CMD_DMACNTRELOADH, count >> 8);


 snd_es1938_write(chip, ESS_CMD_SETFORMAT2, u ? 0x51 : 0x71);
 snd_es1938_write(chip, ESS_CMD_SETFORMAT2, 0x90 |
         (u ? 0x00 : 0x20) |
         (is8 ? 0x00 : 0x04) |
         (mono ? 0x40 : 0x08));




 snd_es1938_capture_setdma(chip);

 return 0;
}
