
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_action_nonatomic (int *,struct snd_pcm_substream*,int ) ;
 int snd_pcm_action_reset ;

__attribute__((used)) static int snd_pcm_reset(struct snd_pcm_substream *substream)
{
 return snd_pcm_action_nonatomic(&snd_pcm_action_reset, substream, 0);
}
