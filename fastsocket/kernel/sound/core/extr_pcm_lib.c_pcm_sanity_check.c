
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_2__* status; int dma_area; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int copy; } ;


 int EBADFD ;
 int EINVAL ;
 int ENXIO ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 scalar_t__ SNDRV_PCM_STATE_OPEN ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int pcm_sanity_check(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 if (PCM_RUNTIME_CHECK(substream))
  return -ENXIO;
 runtime = substream->runtime;
 if (snd_BUG_ON(!substream->ops->copy && !runtime->dma_area))
  return -EINVAL;
 if (runtime->status->state == SNDRV_PCM_STATE_OPEN)
  return -EBADFD;
 return 0;
}
