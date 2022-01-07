
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int active; int dma1_shift; int dma1_size; int dma1; } ;
typedef int snd_pcm_uframes_t ;


 int ADC1 ;
 int snd_dma_pointer (int ,int ) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es18xx_capture_pointer(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = snd_pcm_substream_chip(substream);
 int pos;

        if (!(chip->active & ADC1))
                return 0;
 pos = snd_dma_pointer(chip->dma1, chip->dma1_size);
 return pos >> chip->dma1_shift;
}
