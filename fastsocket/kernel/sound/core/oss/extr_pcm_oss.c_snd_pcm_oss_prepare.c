
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {scalar_t__ buffer_used; scalar_t__ period_ptr; scalar_t__ prev_hw_ptr_period; scalar_t__ prepare; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;


 int SNDRV_PCM_IOCTL_PREPARE ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,int *) ;
 int snd_printd (char*) ;

__attribute__((used)) static int snd_pcm_oss_prepare(struct snd_pcm_substream *substream)
{
 int err;
 struct snd_pcm_runtime2 *runtime = oss_runtime(substream->runtime);

 err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_PREPARE, ((void*)0));
 if (err < 0) {
  snd_printd("snd_pcm_oss_prepare: SNDRV_PCM_IOCTL_PREPARE failed\n");
  return err;
 }
 runtime->oss.prepare = 0;
 runtime->oss.prev_hw_ptr_period = 0;
 runtime->oss.period_ptr = 0;
 runtime->oss.buffer_used = 0;

 return 0;
}
