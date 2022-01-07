
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio_dma {scalar_t__ pcm_open_flag; } ;
struct cs5535audio {int ac97; struct snd_pcm_substream* playback_substream; } ;
struct TYPE_2__ {struct cs5535audio_dma* private_data; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 int cs5535audio_clear_dma_packets (struct cs5535audio*,struct cs5535audio_dma*,struct snd_pcm_substream*) ;
 int snd_ac97_update_power (int ,int ,int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs5535audio_hw_free(struct snd_pcm_substream *substream)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 struct cs5535audio_dma *dma = substream->runtime->private_data;

 if (dma->pcm_open_flag) {
  if (substream == cs5535au->playback_substream)
   snd_ac97_update_power(cs5535au->ac97,
     AC97_PCM_FRONT_DAC_RATE, 0);
  else
   snd_ac97_update_power(cs5535au->ac97,
     AC97_PCM_LR_ADC_RATE, 0);
  dma->pcm_open_flag = 0;
 }
 cs5535audio_clear_dma_packets(cs5535au, dma, substream);
 return snd_pcm_lib_free_pages(substream);
}
