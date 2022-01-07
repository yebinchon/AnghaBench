
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int f_flags; TYPE_1__* pcm; } ;
struct snd_card {int dummy; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {struct snd_card* card; } ;


 int SNDRV_CTL_POWER_D0 ;
 int snd_pcm_action_nonatomic (int *,struct snd_pcm_substream*,int) ;
 int snd_pcm_action_prepare ;
 int snd_power_lock (struct snd_card*) ;
 int snd_power_unlock (struct snd_card*) ;
 int snd_power_wait (struct snd_card*,int ) ;

__attribute__((used)) static int snd_pcm_prepare(struct snd_pcm_substream *substream,
      struct file *file)
{
 int res;
 struct snd_card *card = substream->pcm->card;
 int f_flags;

 if (file)
  f_flags = file->f_flags;
 else
  f_flags = substream->f_flags;

 snd_power_lock(card);
 if ((res = snd_power_wait(card, SNDRV_CTL_POWER_D0)) >= 0)
  res = snd_pcm_action_nonatomic(&snd_pcm_action_prepare,
            substream, f_flags);
 snd_power_unlock(card);
 return res;
}
