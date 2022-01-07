
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ timer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int tsleep; int sleep; TYPE_1__* status; int trigger_tstamp; } ;
struct TYPE_2__ {int state; } ;


 int SNDRV_TIMER_EVENT_MSTOP ;
 int snd_pcm_trigger_tstamp (struct snd_pcm_substream*) ;
 int snd_timer_notify (scalar_t__,int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_pcm_post_stop(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (runtime->status->state != state) {
  snd_pcm_trigger_tstamp(substream);
  if (substream->timer)
   snd_timer_notify(substream->timer, SNDRV_TIMER_EVENT_MSTOP,
      &runtime->trigger_tstamp);
  runtime->status->state = state;
 }
 wake_up(&runtime->sleep);
 wake_up(&runtime->tsleep);
}
