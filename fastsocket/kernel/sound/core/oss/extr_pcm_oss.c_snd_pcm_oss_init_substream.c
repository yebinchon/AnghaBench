
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {int pcm_release; int runtime; int f_flags; } ;
struct TYPE_5__ {int params; int trigger; int rate; int channels; scalar_t__ subdivision; scalar_t__ maxfrags; scalar_t__ fragshift; int format; int params_lock; } ;
struct snd_pcm_runtime2 {TYPE_2__ oss; } ;
struct snd_pcm_oss_setup {scalar_t__ block; scalar_t__ nonblock; } ;
struct TYPE_4__ {int oss; struct snd_pcm_oss_setup setup; } ;
struct TYPE_6__ {TYPE_1__ oss; } ;


 int AFMT_MU_LAW ;
 int AFMT_S16_LE ;
 int AFMT_U8 ;
 int O_NONBLOCK ;
 int SNDRV_MINOR_OSS_DEVICE (int) ;


 int mutex_init (int *) ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;
 TYPE_3__* oss_substream (struct snd_pcm_substream*) ;
 int snd_pcm_oss_release_substream ;

__attribute__((used)) static void snd_pcm_oss_init_substream(struct snd_pcm_substream *substream,
           struct snd_pcm_oss_setup *setup,
           int minor)
{
 struct snd_pcm_runtime2 *runtime;

 oss_substream(substream)->oss.oss = 1;
 oss_substream(substream)->oss.setup = *setup;
 if (setup->nonblock)
  substream->f_flags |= O_NONBLOCK;
 else if (setup->block)
  substream->f_flags &= ~O_NONBLOCK;
 runtime = oss_runtime(substream->runtime);
 runtime->oss.params = 1;
 runtime->oss.trigger = 1;
 runtime->oss.rate = 8000;
 mutex_init(&runtime->oss.params_lock);
 switch (SNDRV_MINOR_OSS_DEVICE(minor)) {
 case 128:
  runtime->oss.format = AFMT_U8;
  break;
 case 129:
  runtime->oss.format = AFMT_S16_LE;
  break;
 default:
  runtime->oss.format = AFMT_MU_LAW;
 }
 runtime->oss.channels = 1;
 runtime->oss.fragshift = 0;
 runtime->oss.maxfrags = 0;
 runtime->oss.subdivision = 0;
 substream->pcm_release = snd_pcm_oss_release_substream;
}
