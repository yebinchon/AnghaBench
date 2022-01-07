
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio {int ac97; } ;
struct TYPE_2__ {int rate; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int snd_ac97_set_rate (int ,int ,int ) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs5535audio_playback_prepare(struct snd_pcm_substream *substream)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 return snd_ac97_set_rate(cs5535au->ac97, AC97_PCM_FRONT_DAC_RATE,
     substream->runtime->rate);
}
