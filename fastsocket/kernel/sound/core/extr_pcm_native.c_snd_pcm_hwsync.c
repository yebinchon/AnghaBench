
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {int state; } ;


 int EBADFD ;
 int EPIPE ;





 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_hwsync(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 snd_pcm_stream_lock_irq(substream);
 switch (runtime->status->state) {
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   goto __badfd;
 case 130:
  if ((err = snd_pcm_update_hw_ptr(substream)) < 0)
   break;

 case 131:
 case 129:
  err = 0;
  break;
 case 128:
  err = -EPIPE;
  break;
 default:
       __badfd:
  err = -EBADFD;
  break;
 }
 snd_pcm_stream_unlock_irq(substream);
 return err;
}
