
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_action (int *,struct snd_pcm_substream*,int) ;
 int snd_pcm_action_pause ;

__attribute__((used)) static int snd_pcm_pause(struct snd_pcm_substream *substream, int push)
{
 return snd_pcm_action(&snd_pcm_action_pause, substream, push);
}
