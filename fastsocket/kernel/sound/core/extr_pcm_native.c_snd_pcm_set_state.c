
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int state; } ;


 int SNDRV_PCM_STATE_DISCONNECTED ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_pcm_set_state(struct snd_pcm_substream *substream, int state)
{
 snd_pcm_stream_lock_irq(substream);
 if (substream->runtime->status->state != SNDRV_PCM_STATE_DISCONNECTED)
  substream->runtime->status->state = state;
 snd_pcm_stream_unlock_irq(substream);
}
