
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int SNDRV_PCM_STATE_RUNNING ;
 int snd_pcm_action (int *,struct snd_pcm_substream*,int ) ;
 int snd_pcm_action_start ;

int snd_pcm_start(struct snd_pcm_substream *substream)
{
 return snd_pcm_action(&snd_pcm_action_start, substream,
         SNDRV_PCM_STATE_RUNNING);
}
