
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_3__ {scalar_t__ prev_hw_ptr_period; scalar_t__ period_frames; } ;
struct TYPE_4__ {TYPE_1__ oss; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ get_hw_ptr_period (struct snd_pcm_runtime*) ;
 TYPE_2__* oss_runtime (struct snd_pcm_runtime*) ;
 scalar_t__ snd_pcm_playback_avail (struct snd_pcm_runtime*) ;

__attribute__((used)) static int snd_pcm_oss_playback_ready(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (atomic_read(&substream->mmap_count))
  return oss_runtime(runtime)->oss.prev_hw_ptr_period !=
      get_hw_ptr_period(runtime);
 else
  return snd_pcm_playback_avail(runtime) >=
      oss_runtime(runtime)->oss.period_frames;
}
