
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; int private_free; struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int timer; int interrupt; struct snd_pcm_substream* substream; scalar_t__ started; } ;
struct ct_atc {int rsr; int msr; int timer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int UINT_MAX ;
 int ct_atc_pcm_free_substream ;
 int ct_atc_pcm_interrupt ;
 TYPE_1__ ct_pcm_capture_hw ;
 int ct_timer_instance_new (int ,struct ct_atc_pcm*) ;
 int kfree (struct ct_atc_pcm*) ;
 struct ct_atc_pcm* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int ct_pcm_capture_open(struct snd_pcm_substream *substream)
{
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm;
 int err;

 apcm = kzalloc(sizeof(*apcm), GFP_KERNEL);
 if (!apcm)
  return -ENOMEM;

 apcm->started = 0;
 apcm->substream = substream;
 apcm->interrupt = ct_atc_pcm_interrupt;
 runtime->private_data = apcm;
 runtime->private_free = ct_atc_pcm_free_substream;
 runtime->hw = ct_pcm_capture_hw;
 runtime->hw.rate_max = atc->rsr * atc->msr;

 err = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0) {
  kfree(apcm);
  return err;
 }
 err = snd_pcm_hw_constraint_minmax(runtime,
        SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
        1024, UINT_MAX);
 if (err < 0) {
  kfree(apcm);
  return err;
 }

 apcm->timer = ct_timer_instance_new(atc->timer, apcm);
 if (!apcm->timer)
  return -ENOMEM;

 return 0;
}
