
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_2__* control; TYPE_1__* status; int sleep; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;
typedef int snd_pcm_uframes_t ;
typedef int poll_table ;
struct TYPE_4__ {int avail_min; } ;
struct TYPE_3__ {int state; } ;


 unsigned int ENXIO ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;




 int poll_wait (struct file*,int *,int *) ;
 int snd_pcm_capture_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static unsigned int snd_pcm_capture_poll(struct file *file, poll_table * wait)
{
 struct snd_pcm_file *pcm_file;
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
        unsigned int mask;
 snd_pcm_uframes_t avail;

 pcm_file = file->private_data;

 substream = pcm_file->substream;
 if (PCM_RUNTIME_CHECK(substream))
  return -ENXIO;
 runtime = substream->runtime;

 poll_wait(file, &runtime->sleep, wait);

 snd_pcm_stream_lock_irq(substream);
 avail = snd_pcm_capture_avail(runtime);
 switch (runtime->status->state) {
 case 128:
 case 129:
 case 130:
  if (avail >= runtime->control->avail_min) {
   mask = POLLIN | POLLRDNORM;
   break;
  }
  mask = 0;
  break;
 case 131:
  if (avail > 0) {
   mask = POLLIN | POLLRDNORM;
   break;
  }

 default:
  mask = POLLIN | POLLRDNORM | POLLERR;
  break;
 }
 snd_pcm_stream_unlock_irq(substream);
 return mask;
}
