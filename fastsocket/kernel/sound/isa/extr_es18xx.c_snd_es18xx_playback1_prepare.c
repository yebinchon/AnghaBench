
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int format; } ;
struct snd_es18xx {unsigned int dma2_size; int dma2; } ;


 int DAC2 ;
 int DMA_AUTOINIT ;
 int DMA_MODE_WRITE ;
 int snd_dma_program (int ,int ,unsigned int,int) ;
 int snd_es18xx_mixer_bits (struct snd_es18xx*,int,int,int) ;
 int snd_es18xx_mixer_write (struct snd_es18xx*,int,unsigned int) ;
 int snd_es18xx_rate_set (struct snd_es18xx*,struct snd_pcm_substream*,int ) ;
 scalar_t__ snd_pcm_format_unsigned (int ) ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_playback1_prepare(struct snd_es18xx *chip,
     struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int size = snd_pcm_lib_buffer_bytes(substream);
 unsigned int count = snd_pcm_lib_period_bytes(substream);

 chip->dma2_size = size;

        snd_es18xx_rate_set(chip, substream, DAC2);


        count = 0x10000 - count;
        snd_es18xx_mixer_write(chip, 0x74, count & 0xff);
        snd_es18xx_mixer_write(chip, 0x76, count >> 8);


        snd_es18xx_mixer_bits(chip, 0x7A, 0x07,
         ((runtime->channels == 1) ? 0x00 : 0x02) |
         (snd_pcm_format_width(runtime->format) == 16 ? 0x01 : 0x00) |
         (snd_pcm_format_unsigned(runtime->format) ? 0x00 : 0x04));


        snd_dma_program(chip->dma2, runtime->dma_addr, size, DMA_MODE_WRITE | DMA_AUTOINIT);

 return 0;
}
