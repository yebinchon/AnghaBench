
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {TYPE_2__* status; } ;
struct snd_card {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {struct snd_card* card; } ;


 int EBADFD ;
 int SNDRV_CTL_POWER_D0 ;

 int SNDRV_PCM_STATE_SUSPENDED ;

 int snd_pcm_stop (struct snd_pcm_substream*,int const) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_power_lock (struct snd_card*) ;
 int snd_power_unlock (struct snd_card*) ;
 int snd_power_wait (struct snd_card*,int ) ;

__attribute__((used)) static int snd_pcm_xrun(struct snd_pcm_substream *substream)
{
 struct snd_card *card = substream->pcm->card;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int result;

 snd_power_lock(card);
 if (runtime->status->state == SNDRV_PCM_STATE_SUSPENDED) {
  result = snd_power_wait(card, SNDRV_CTL_POWER_D0);
  if (result < 0)
   goto _unlock;
 }

 snd_pcm_stream_lock_irq(substream);
 switch (runtime->status->state) {
 case 128:
  result = 0;
  break;
 case 129:
  result = snd_pcm_stop(substream, 128);
  break;
 default:
  result = -EBADFD;
 }
 snd_pcm_stream_unlock_irq(substream);
 _unlock:
 snd_power_unlock(card);
 return result;
}
