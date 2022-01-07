
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw_ptr_interrupt; int period_size; int silence_start; scalar_t__ silence_filled; TYPE_1__* status; scalar_t__ hw_ptr_base; } ;
struct TYPE_4__ {int (* ioctl ) (struct snd_pcm_substream*,int ,int *) ;} ;
struct TYPE_3__ {int hw_ptr; } ;


 int SNDRV_PCM_IOCTL1_RESET ;
 int stub1 (struct snd_pcm_substream*,int ,int *) ;

__attribute__((used)) static int snd_pcm_do_reset(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err = substream->ops->ioctl(substream, SNDRV_PCM_IOCTL1_RESET, ((void*)0));
 if (err < 0)
  return err;
 runtime->hw_ptr_base = 0;
 runtime->hw_ptr_interrupt = runtime->status->hw_ptr -
  runtime->status->hw_ptr % runtime->period_size;
 runtime->silence_start = runtime->status->hw_ptr;
 runtime->silence_filled = 0;
 return 0;
}
