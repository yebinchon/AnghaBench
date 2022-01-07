
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_runtime2 {scalar_t__ twake; } ;
struct snd_pcm_runtime {scalar_t__ avail_max; scalar_t__ buffer_size; scalar_t__ stop_threshold; int sleep; TYPE_2__* control; int tsleep; TYPE_1__* status; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
struct TYPE_4__ {scalar_t__ avail_min; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int EPIPE ;
 scalar_t__ SNDRV_PCM_STATE_DRAINING ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_pcm_capture_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_drain_done (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_playback_avail (struct snd_pcm_runtime*) ;
 int wake_up (int *) ;
 int xrun (struct snd_pcm_substream*) ;

int snd_pcm_update_state(struct snd_pcm_substream *substream,
    struct snd_pcm_runtime *runtime)
{
 snd_pcm_uframes_t avail;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  avail = snd_pcm_playback_avail(runtime);
 else
  avail = snd_pcm_capture_avail(runtime);
 if (avail > runtime->avail_max)
  runtime->avail_max = avail;
 if (runtime->status->state == SNDRV_PCM_STATE_DRAINING) {
  if (avail >= runtime->buffer_size) {
   snd_pcm_drain_done(substream);
   return -EPIPE;
  }
 } else {
  if (avail >= runtime->stop_threshold) {
   xrun(substream);
   return -EPIPE;
  }
 }
 if (((struct snd_pcm_runtime2 *)runtime)->twake) {
  if (avail >= ((struct snd_pcm_runtime2 *)runtime)->twake)
   wake_up(&runtime->tsleep);
 } else if (avail >= runtime->control->avail_min)
  wake_up(&runtime->sleep);
 return 0;
}
