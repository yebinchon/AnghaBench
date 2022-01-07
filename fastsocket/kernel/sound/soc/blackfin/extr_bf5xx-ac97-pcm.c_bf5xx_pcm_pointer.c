
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {unsigned int tx_delay_pos; unsigned int rx_pos; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sport_device* private_data; } ;
struct ac97_frame {int dummy; } ;
typedef unsigned int snd_pcm_uframes_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int sport_curr_offset_rx (struct sport_device*) ;
 int sport_curr_offset_tx (struct sport_device*) ;

__attribute__((used)) static snd_pcm_uframes_t bf5xx_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct sport_device *sport = runtime->private_data;
 unsigned int curr;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  curr = sport_curr_offset_tx(sport) / sizeof(struct ac97_frame);
 else
  curr = sport_curr_offset_rx(sport) / sizeof(struct ac97_frame);


 return curr;
}
