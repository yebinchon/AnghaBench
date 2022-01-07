
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int EBADFD ;
 int ENXIO ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 scalar_t__ SNDRV_PCM_STATE_DISCONNECTED ;
 scalar_t__ SNDRV_PCM_STATE_OPEN ;
 scalar_t__ SNDRV_PCM_STATE_PAUSED ;
 int SNDRV_PCM_STATE_SETUP ;
 scalar_t__ SNDRV_PCM_STATE_SUSPENDED ;
 int snd_pcm_pause (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_drop(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 int result = 0;

 if (PCM_RUNTIME_CHECK(substream))
  return -ENXIO;
 runtime = substream->runtime;

 if (runtime->status->state == SNDRV_PCM_STATE_OPEN ||
     runtime->status->state == SNDRV_PCM_STATE_DISCONNECTED ||
     runtime->status->state == SNDRV_PCM_STATE_SUSPENDED)
  return -EBADFD;

 snd_pcm_stream_lock_irq(substream);

 if (runtime->status->state == SNDRV_PCM_STATE_PAUSED)
  snd_pcm_pause(substream, 0);

 snd_pcm_stop(substream, SNDRV_PCM_STATE_SETUP);

 snd_pcm_stream_unlock_irq(substream);

 return result;
}
