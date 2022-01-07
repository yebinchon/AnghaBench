
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int hw; scalar_t__ dma_area; } ;
struct snd_msnd {struct snd_pcm_substream* capture_substream; scalar_t__ mappedbase; int flags; } ;


 int F_AUDIO_READ_INUSE ;
 int memset (scalar_t__,int ,int) ;
 int set_bit (int ,int *) ;
 int snd_msnd_capture ;
 int snd_msnd_enable_irq (struct snd_msnd*) ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_msnd_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);

 set_bit(F_AUDIO_READ_INUSE, &chip->flags);
 snd_msnd_enable_irq(chip);
 runtime->dma_area = chip->mappedbase + 0x3000;
 runtime->dma_bytes = 0x3000;
 memset(runtime->dma_area, 0, runtime->dma_bytes);
 chip->capture_substream = substream;
 runtime->hw = snd_msnd_capture;
 return 0;
}
