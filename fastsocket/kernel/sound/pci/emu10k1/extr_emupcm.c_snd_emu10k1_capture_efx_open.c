
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int rate_min; int rate_max; int channels_min; int channels_max; int formats; void* rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; int private_free; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int capture_ipr; int capture_cr_val; int capture_cr_val2; int capture_idx_reg; int capture_bs_reg; int capture_ba_reg; int capture_inte; struct snd_pcm_substream* substream; int type; struct snd_emu10k1* emu; } ;
struct TYPE_5__ {int internal_clock; } ;
struct snd_emu10k1 {int* efx_voices_mask; struct snd_pcm_substream* pcm_capture_efx_substream; int capture_efx_interrupt; int reg_lock; TYPE_2__ emu1010; TYPE_1__* card_capabilities; scalar_t__ audigy; } ;
struct TYPE_4__ {scalar_t__ emu_model; } ;


 int CAPTURE_EFX ;
 int ENOMEM ;
 int FXBA ;
 int FXBS ;
 int FXIDX ;
 int GFP_KERNEL ;
 int INTE_EFXBUFENABLE ;
 int IPR_EFXBUFFULL ;
 int IPR_EFXBUFHALFFULL ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 void* SNDRV_PCM_RATE_192000 ;
 void* SNDRV_PCM_RATE_44100 ;
 void* SNDRV_PCM_RATE_48000 ;
 void* SNDRV_PCM_RATE_96000 ;
 int hw_constraints_capture_period_sizes ;
 struct snd_emu10k1_pcm* kzalloc (int,int ) ;
 TYPE_3__ snd_emu10k1_capture_efx ;
 int snd_emu10k1_pcm_efx_interrupt ;
 int snd_emu10k1_pcm_free_substream ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_emu10k1_capture_efx_open(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_pcm *epcm;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int nefx = emu->audigy ? 64 : 32;
 int idx;

 epcm = kzalloc(sizeof(*epcm), GFP_KERNEL);
 if (epcm == ((void*)0))
  return -ENOMEM;
 epcm->emu = emu;
 epcm->type = CAPTURE_EFX;
 epcm->substream = substream;
 epcm->capture_ipr = IPR_EFXBUFFULL|IPR_EFXBUFHALFFULL;
 epcm->capture_inte = INTE_EFXBUFENABLE;
 epcm->capture_ba_reg = FXBA;
 epcm->capture_bs_reg = FXBS;
 epcm->capture_idx_reg = FXIDX;
 substream->runtime->private_data = epcm;
 substream->runtime->private_free = snd_emu10k1_pcm_free_substream;
 runtime->hw = snd_emu10k1_capture_efx;
 runtime->hw.rates = SNDRV_PCM_RATE_48000;
 runtime->hw.rate_min = runtime->hw.rate_max = 48000;
 spin_lock_irq(&emu->reg_lock);
 if (emu->card_capabilities->emu_model) {
  switch (emu->emu1010.internal_clock) {
  case 0:

   runtime->hw.rates = SNDRV_PCM_RATE_44100;
   runtime->hw.rate_min = runtime->hw.rate_max = 44100;
   runtime->hw.channels_min =
    runtime->hw.channels_max = 16;
   break;
  case 1:

   runtime->hw.rates = SNDRV_PCM_RATE_48000;
   runtime->hw.rate_min = runtime->hw.rate_max = 48000;
   runtime->hw.channels_min =
    runtime->hw.channels_max = 16;
   break;
  };
  runtime->hw.formats = SNDRV_PCM_FMTBIT_S32_LE;



 } else {
  runtime->hw.channels_min = runtime->hw.channels_max = 0;
  for (idx = 0; idx < nefx; idx++) {
   if (emu->efx_voices_mask[idx/32] & (1 << (idx%32))) {
    runtime->hw.channels_min++;
    runtime->hw.channels_max++;
   }
  }
 }
 epcm->capture_cr_val = emu->efx_voices_mask[0];
 epcm->capture_cr_val2 = emu->efx_voices_mask[1];
 spin_unlock_irq(&emu->reg_lock);
 emu->capture_efx_interrupt = snd_emu10k1_pcm_efx_interrupt;
 emu->pcm_capture_efx_substream = substream;
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, &hw_constraints_capture_period_sizes);
 return 0;
}
