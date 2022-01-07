
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {void* last_jiffies; int last_drift; int pcm_rate_shift; struct loopback_cable* cable; } ;
struct loopback_cable {int running; int pause; int lock; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;




 void* jiffies ;
 int loopback_active_notify (struct loopback_pcm*) ;
 int loopback_check_format (struct loopback_cable*,int) ;
 int loopback_timer_start (struct loopback_pcm*) ;
 int loopback_timer_stop (struct loopback_pcm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct loopback_pcm *dpcm = runtime->private_data;
 struct loopback_cable *cable = dpcm->cable;
 int err, stream = 1 << substream->stream;

 switch (cmd) {
 case 129:
  err = loopback_check_format(cable, substream->stream);
  if (err < 0)
   return err;
  dpcm->last_jiffies = jiffies;
  dpcm->pcm_rate_shift = 0;
  dpcm->last_drift = 0;
  spin_lock(&cable->lock);
  cable->running |= stream;
  cable->pause &= ~stream;
  spin_unlock(&cable->lock);
  loopback_timer_start(dpcm);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   loopback_active_notify(dpcm);
  break;
 case 128:
  spin_lock(&cable->lock);
  cable->running &= ~stream;
  cable->pause &= ~stream;
  spin_unlock(&cable->lock);
  loopback_timer_stop(dpcm);
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   loopback_active_notify(dpcm);
  break;
 case 131:
  spin_lock(&cable->lock);
  cable->pause |= stream;
  spin_unlock(&cable->lock);
  loopback_timer_stop(dpcm);
  break;
 case 130:
  spin_lock(&cable->lock);
  dpcm->last_jiffies = jiffies;
  cable->pause &= ~stream;
  spin_unlock(&cable->lock);
  loopback_timer_start(dpcm);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
