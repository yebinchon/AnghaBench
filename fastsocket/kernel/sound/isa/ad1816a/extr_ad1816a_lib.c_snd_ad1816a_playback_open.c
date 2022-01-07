
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int period_bytes_max; int buffer_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ad1816a {struct snd_pcm_substream* playback_substream; int dma1; } ;


 int AD1816A_MODE_PLAYBACK ;
 int snd_ad1816a_open (struct snd_ad1816a*,int ) ;
 TYPE_1__ snd_ad1816a_playback ;
 int snd_pcm_limit_isa_dma_size (int ,int *) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ad1816a_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int error;

 if ((error = snd_ad1816a_open(chip, AD1816A_MODE_PLAYBACK)) < 0)
  return error;
 runtime->hw = snd_ad1816a_playback;
 snd_pcm_limit_isa_dma_size(chip->dma1, &runtime->hw.buffer_bytes_max);
 snd_pcm_limit_isa_dma_size(chip->dma1, &runtime->hw.period_bytes_max);
 chip->playback_substream = substream;
 return 0;
}
