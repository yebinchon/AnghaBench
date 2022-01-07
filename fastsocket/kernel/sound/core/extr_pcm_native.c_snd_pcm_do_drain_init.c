
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {int state; } ;


 void* SNDRV_PCM_STATE_DRAINING ;


 void* SNDRV_PCM_STATE_SETUP ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_pcm_capture_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_do_start (struct snd_pcm_substream*,void*) ;
 int snd_pcm_do_stop (struct snd_pcm_substream*,int) ;
 int snd_pcm_playback_empty (struct snd_pcm_substream*) ;
 int snd_pcm_post_start (struct snd_pcm_substream*,void*) ;
 int snd_pcm_post_stop (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_pcm_do_drain_init(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  switch (runtime->status->state) {
  case 129:

   if (! snd_pcm_playback_empty(substream)) {
    snd_pcm_do_start(substream, SNDRV_PCM_STATE_DRAINING);
    snd_pcm_post_start(substream, SNDRV_PCM_STATE_DRAINING);
   }
   break;
  case 128:
   runtime->status->state = SNDRV_PCM_STATE_DRAINING;
   break;
  default:
   break;
  }
 } else {

  if (runtime->status->state == 128) {
   int new_state = snd_pcm_capture_avail(runtime) > 0 ?
    SNDRV_PCM_STATE_DRAINING : SNDRV_PCM_STATE_SETUP;
   snd_pcm_do_stop(substream, new_state);
   snd_pcm_post_stop(substream, new_state);
  }
 }
 return 0;
}
