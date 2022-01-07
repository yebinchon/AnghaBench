
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident_voice {int spdif; struct snd_pcm_substream* substream; } ;
struct snd_trident {scalar_t__ device; TYPE_2__* spdif_pcm_ctl; int card; int reg_lock; int spdif_bits; int spdif_pcm_bits; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; int private_free; struct snd_trident_voice* private_data; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int EAGAIN ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_TRIDENT_VOICE_TYPE_PCM ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int snd_ctl_notify (int ,int,int *) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct snd_trident_voice* snd_trident_alloc_voice (struct snd_trident*,int ,int ,int ) ;
 int snd_trident_pcm_free_substream ;
 int snd_trident_spdif ;
 int snd_trident_spdif_7018 ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_open(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_trident_voice *voice;
 struct snd_pcm_runtime *runtime = substream->runtime;

 voice = snd_trident_alloc_voice(trident, SNDRV_TRIDENT_VOICE_TYPE_PCM, 0, 0);
 if (voice == ((void*)0))
  return -EAGAIN;
 voice->spdif = 1;
 voice->substream = substream;
 spin_lock_irq(&trident->reg_lock);
 trident->spdif_pcm_bits = trident->spdif_bits;
 spin_unlock_irq(&trident->reg_lock);

 runtime->private_data = voice;
 runtime->private_free = snd_trident_pcm_free_substream;
 if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
  runtime->hw = snd_trident_spdif;
 } else {
  runtime->hw = snd_trident_spdif_7018;
 }

 trident->spdif_pcm_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(trident->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &trident->spdif_pcm_ctl->id);

 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 64*1024);
 return 0;
}
