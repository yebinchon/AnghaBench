
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_usX2Y_substream {TYPE_4__* usX2Y; int state; TYPE_3__* pcm_substream; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_usX2Y_substream* private_data; } ;
struct TYPE_8__ {int prepare_mutex; struct snd_usX2Y_substream** subs; } ;
struct TYPE_7__ {TYPE_2__* runtime; } ;
struct TYPE_6__ {TYPE_1__* status; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ SNDRV_PCM_STATE_PREPARED ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 int snd_printdd (char*,struct snd_pcm_substream*) ;
 scalar_t__ state_PREPARED ;
 int state_STOPPED ;
 int usX2Y_urbs_release (struct snd_usX2Y_substream*) ;

__attribute__((used)) static int snd_usX2Y_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_usX2Y_substream *subs = runtime->private_data;
 mutex_lock(&subs->usX2Y->prepare_mutex);
 snd_printdd("snd_usX2Y_hw_free(%p)\n", substream);

 if (SNDRV_PCM_STREAM_PLAYBACK == substream->stream) {
  struct snd_usX2Y_substream *cap_subs = subs->usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE];
  atomic_set(&subs->state, state_STOPPED);
  usX2Y_urbs_release(subs);
  if (!cap_subs->pcm_substream ||
      !cap_subs->pcm_substream->runtime ||
      !cap_subs->pcm_substream->runtime->status ||
      cap_subs->pcm_substream->runtime->status->state < SNDRV_PCM_STATE_PREPARED) {
   atomic_set(&cap_subs->state, state_STOPPED);
   usX2Y_urbs_release(cap_subs);
  }
 } else {
  struct snd_usX2Y_substream *playback_subs = subs->usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
  if (atomic_read(&playback_subs->state) < state_PREPARED) {
   atomic_set(&subs->state, state_STOPPED);
   usX2Y_urbs_release(subs);
  }
 }
 mutex_unlock(&subs->usX2Y->prepare_mutex);
 return snd_pcm_lib_free_pages(substream);
}
