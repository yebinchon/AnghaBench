
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sport_device* private_data; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;




 int sport_rx_start (struct sport_device*) ;
 int sport_rx_stop (struct sport_device*) ;
 int sport_tx_start (struct sport_device*) ;
 int sport_tx_stop (struct sport_device*) ;

__attribute__((used)) static int bf5xx_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct sport_device *sport = runtime->private_data;
 int ret = 0;

 switch (cmd) {
 case 130:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sport_tx_start(sport);
  else
   sport_rx_start(sport);
  break;
 case 129:
 case 128:
 case 131:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sport_tx_stop(sport);
  else
   sport_rx_stop(sport);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
