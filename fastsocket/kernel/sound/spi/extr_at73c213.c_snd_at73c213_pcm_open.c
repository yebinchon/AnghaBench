
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_at73c213 {struct snd_pcm_substream* substream; int bitrate; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 TYPE_1__ snd_at73c213_playback_hw ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_at73c213* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_at73c213_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_at73c213 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;


 err = snd_pcm_hw_constraint_integer(runtime,
     SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  return err;
 snd_at73c213_playback_hw.rate_min = chip->bitrate;
 snd_at73c213_playback_hw.rate_max = chip->bitrate;
 runtime->hw = snd_at73c213_playback_hw;
 chip->substream = substream;

 return 0;
}
