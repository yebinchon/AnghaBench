
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ boundary; TYPE_2__* control; TYPE_1__* status; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
typedef scalar_t__ snd_pcm_sframes_t ;
struct TYPE_4__ {scalar_t__ appl_ptr; } ;
struct TYPE_3__ {int state; } ;


 scalar_t__ EBADFD ;
 scalar_t__ EPIPE ;
 scalar_t__ ESTRPIPE ;





 scalar_t__ snd_pcm_capture_hw_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_sframes_t snd_pcm_capture_rewind(struct snd_pcm_substream *substream,
      snd_pcm_uframes_t frames)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_sframes_t appl_ptr;
 snd_pcm_sframes_t ret;
 snd_pcm_sframes_t hw_avail;

 if (frames == 0)
  return 0;

 snd_pcm_stream_lock_irq(substream);
 switch (runtime->status->state) {
 case 131:
 case 132:
  break;
 case 130:
  if (snd_pcm_update_hw_ptr(substream) >= 0)
   break;

 case 128:
  ret = -EPIPE;
  goto __end;
 case 129:
  ret = -ESTRPIPE;
  goto __end;
 default:
  ret = -EBADFD;
  goto __end;
 }

 hw_avail = snd_pcm_capture_hw_avail(runtime);
 if (hw_avail <= 0) {
  ret = 0;
  goto __end;
 }
 if (frames > (snd_pcm_uframes_t)hw_avail)
  frames = hw_avail;
 appl_ptr = runtime->control->appl_ptr - frames;
 if (appl_ptr < 0)
  appl_ptr += runtime->boundary;
 runtime->control->appl_ptr = appl_ptr;
 ret = frames;
 __end:
 snd_pcm_stream_unlock_irq(substream);
 return ret;
}
