
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SACR0 ;
 int SACR0_ENB ;
 int SACR1 ;
 int SACR1_DREC ;
 int SACR1_DRPL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;







__attribute__((used)) static int pxa2xx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
         struct snd_soc_dai *dai)
{
 int ret = 0;

 switch (cmd) {
 case 130:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   SACR1 &= ~SACR1_DRPL;
  else
   SACR1 &= ~SACR1_DREC;
  SACR0 |= SACR0_ENB;
  break;
 case 131:
 case 132:
 case 129:
 case 128:
 case 133:
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
