
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;






 int s6000_i2s_start (struct snd_pcm_substream*) ;
 int s6000_i2s_stop (struct snd_pcm_substream*) ;

__attribute__((used)) static int s6000_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
        int after)
{
 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if ((substream->stream == SNDRV_PCM_STREAM_CAPTURE) ^ !after)
   s6000_i2s_start(substream);
  break;
 case 129:
 case 128:
 case 133:
  if (!after)
   s6000_i2s_stop(substream);
 }
 return 0;
}
