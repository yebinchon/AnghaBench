
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int hw; int dma_area; } ;
struct snd_msnd {struct snd_pcm_substream* playback_substream; int mappedbase; int flags; } ;


 int F_AUDIO_WRITE_INUSE ;
 int F_WRITING ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int snd_msnd_enable_irq (struct snd_msnd*) ;
 int snd_msnd_playback ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_msnd_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);

 set_bit(F_AUDIO_WRITE_INUSE, &chip->flags);
 clear_bit(F_WRITING, &chip->flags);
 snd_msnd_enable_irq(chip);

 runtime->dma_area = chip->mappedbase;
 runtime->dma_bytes = 0x3000;

 chip->playback_substream = substream;
 runtime->hw = snd_msnd_playback;
 return 0;
}
