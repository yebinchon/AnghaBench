
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_2__ hw; int private_free; struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int timer; int interrupt; struct snd_pcm_substream* substream; } ;
struct ct_atc {int timer; int (* spdif_out_passthru ) (struct ct_atc*,int) ;} ;
struct TYPE_4__ {scalar_t__ device; } ;


 int ENOMEM ;
 scalar_t__ FRONT ;
 int GFP_KERNEL ;
 scalar_t__ IEC958 ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int UINT_MAX ;
 int ct_atc_pcm_free_substream ;
 int ct_atc_pcm_interrupt ;
 TYPE_2__ ct_pcm_playback_hw ;
 TYPE_2__ ct_spdif_passthru_playback_hw ;
 int ct_timer_instance_new (int ,struct ct_atc_pcm*) ;
 int kfree (struct ct_atc_pcm*) ;
 struct ct_atc_pcm* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct ct_atc*,int) ;

__attribute__((used)) static int ct_pcm_playback_open(struct snd_pcm_substream *substream)
{
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm;
 int err;

 apcm = kzalloc(sizeof(*apcm), GFP_KERNEL);
 if (!apcm)
  return -ENOMEM;

 apcm->substream = substream;
 apcm->interrupt = ct_atc_pcm_interrupt;
 runtime->private_data = apcm;
 runtime->private_free = ct_atc_pcm_free_substream;
 if (IEC958 == substream->pcm->device) {
  runtime->hw = ct_spdif_passthru_playback_hw;
  atc->spdif_out_passthru(atc, 1);
 } else {
  runtime->hw = ct_pcm_playback_hw;
  if (FRONT == substream->pcm->device)
   runtime->hw.channels_max = 8;
 }

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
