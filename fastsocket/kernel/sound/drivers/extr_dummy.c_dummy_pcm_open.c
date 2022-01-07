
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct TYPE_7__ {int info; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct snd_dummy {TYPE_2__* timer_ops; } ;
struct TYPE_6__ {int (* create ) (struct snd_pcm_substream*) ;int (* free ) (struct snd_pcm_substream*) ;} ;
struct TYPE_5__ {int device; } ;


 int SNDRV_PCM_INFO_INTERLEAVED ;
 int SNDRV_PCM_INFO_MMAP ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 int SNDRV_PCM_INFO_NONINTERLEAVED ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int add_capture_constraints (struct snd_pcm_runtime*) ;
 int add_playback_constraints (struct snd_pcm_runtime*) ;
 TYPE_2__ dummy_hrtimer_ops ;
 TYPE_3__ dummy_pcm_hardware ;
 TYPE_2__ dummy_systimer_ops ;
 scalar_t__ hrtimer ;
 struct snd_dummy* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*) ;

__attribute__((used)) static int dummy_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_dummy *dummy = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 dummy->timer_ops = &dummy_systimer_ops;





 err = dummy->timer_ops->create(substream);
 if (err < 0)
  return err;

 runtime->hw = dummy_pcm_hardware;
 if (substream->pcm->device & 1) {
  runtime->hw.info &= ~SNDRV_PCM_INFO_INTERLEAVED;
  runtime->hw.info |= SNDRV_PCM_INFO_NONINTERLEAVED;
 }
 if (substream->pcm->device & 2)
  runtime->hw.info &= ~(SNDRV_PCM_INFO_MMAP |
          SNDRV_PCM_INFO_MMAP_VALID);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  err = add_playback_constraints(substream->runtime);
 else
  err = add_capture_constraints(substream->runtime);
 if (err < 0) {
  dummy->timer_ops->free(substream);
  return err;
 }
 return 0;
}
