
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sport_device* private_data; } ;
typedef unsigned int snd_pcm_uframes_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int sport_curr_offset_rx (struct sport_device*) ;
 unsigned int sport_curr_offset_tx (struct sport_device*) ;

__attribute__((used)) static snd_pcm_uframes_t bf5xx_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct sport_device *sport = runtime->private_data;
 unsigned int diff;
 snd_pcm_uframes_t frames;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  diff = sport_curr_offset_tx(sport);
  frames = diff / (8*4);
 } else {
  diff = sport_curr_offset_rx(sport);
  frames = diff / (8*4);
 }
 return frames;
}
