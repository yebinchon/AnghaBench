
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int SNDRV_PCM_STATE_SETUP ;
 int snd_pcm_action_single (int *,struct snd_pcm_substream*,int ) ;
 int snd_pcm_action_stop ;

int snd_pcm_drain_done(struct snd_pcm_substream *substream)
{
 return snd_pcm_action_single(&snd_pcm_action_stop, substream,
         SNDRV_PCM_STATE_SETUP);
}
