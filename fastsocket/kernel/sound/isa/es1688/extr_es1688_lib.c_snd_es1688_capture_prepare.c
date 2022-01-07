
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int format; } ;
struct snd_es1688 {unsigned int dma_size; int reg_lock; int dma8; } ;


 int DMA_AUTOINIT ;
 int DMA_MODE_READ ;
 int ES1688_DSP_CMD_SPKOFF ;
 int snd_dma_program (int ,int ,unsigned int,int) ;
 int snd_es1688_dsp_command (struct snd_es1688*,int ) ;
 int snd_es1688_read (struct snd_es1688*,int) ;
 int snd_es1688_reset (struct snd_es1688*) ;
 int snd_es1688_set_rate (struct snd_es1688*,struct snd_pcm_substream*) ;
 int snd_es1688_write (struct snd_es1688*,int,unsigned char) ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_es1688* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_es1688_capture_prepare(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_es1688 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int size = snd_pcm_lib_buffer_bytes(substream);
 unsigned int count = snd_pcm_lib_period_bytes(substream);

 chip->dma_size = size;
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_es1688_reset(chip);
 snd_es1688_set_rate(chip, substream);
 snd_es1688_dsp_command(chip, ES1688_DSP_CMD_SPKOFF);
 snd_es1688_write(chip, 0xb8, 0x0e);
 snd_es1688_write(chip, 0xa8, (snd_es1688_read(chip, 0xa8) & ~0x03) | (3 - runtime->channels));
 snd_es1688_write(chip, 0xb9, 2);
 if (runtime->channels == 1) {
  if (snd_pcm_format_width(runtime->format) == 8) {

   snd_es1688_write(chip, 0xb7, 0x51);
   snd_es1688_write(chip, 0xb7, 0xd0);
  } else {

   snd_es1688_write(chip, 0xb7, 0x71);
   snd_es1688_write(chip, 0xb7, 0xf4);
  }
 } else {
  if (snd_pcm_format_width(runtime->format) == 8) {

   snd_es1688_write(chip, 0xb7, 0x51);
   snd_es1688_write(chip, 0xb7, 0x98);
  } else {

   snd_es1688_write(chip, 0xb7, 0x71);
   snd_es1688_write(chip, 0xb7, 0xbc);
  }
 }
 snd_es1688_write(chip, 0xb1, (snd_es1688_read(chip, 0xb1) & 0x0f) | 0x50);
 snd_es1688_write(chip, 0xb2, (snd_es1688_read(chip, 0xb2) & 0x0f) | 0x50);
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 count = -count;
 snd_dma_program(chip->dma8, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_es1688_write(chip, 0xa4, (unsigned char) count);
 snd_es1688_write(chip, 0xa5, (unsigned char) (count >> 8));
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
