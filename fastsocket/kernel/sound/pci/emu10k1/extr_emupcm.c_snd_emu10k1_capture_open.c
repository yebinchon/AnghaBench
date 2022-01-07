
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; int private_free; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int capture_ipr; int capture_idx_reg; int capture_bs_reg; int capture_ba_reg; int capture_inte; struct snd_pcm_substream* substream; int type; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {struct snd_pcm_substream* pcm_capture_substream; int capture_interrupt; scalar_t__ audigy; } ;


 int ADCBA ;
 int ADCBS ;
 int ADCIDX ;
 int A_ADCIDX ;
 int CAPTURE_AC97ADC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INTE_ADCBUFENABLE ;
 int IPR_ADCBUFFULL ;
 int IPR_ADCBUFHALFFULL ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_capture_period_sizes ;
 int hw_constraints_capture_rates ;
 struct snd_emu10k1_pcm* kzalloc (int,int ) ;
 int snd_emu10k1_capture ;
 int snd_emu10k1_pcm_ac97adc_interrupt ;
 int snd_emu10k1_pcm_free_substream ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm;

 epcm = kzalloc(sizeof(*epcm), GFP_KERNEL);
 if (epcm == ((void*)0))
  return -ENOMEM;
 epcm->emu = emu;
 epcm->type = CAPTURE_AC97ADC;
 epcm->substream = substream;
 epcm->capture_ipr = IPR_ADCBUFFULL|IPR_ADCBUFHALFFULL;
 epcm->capture_inte = INTE_ADCBUFENABLE;
 epcm->capture_ba_reg = ADCBA;
 epcm->capture_bs_reg = ADCBS;
 epcm->capture_idx_reg = emu->audigy ? A_ADCIDX : ADCIDX;
 runtime->private_data = epcm;
 runtime->private_free = snd_emu10k1_pcm_free_substream;
 runtime->hw = snd_emu10k1_capture;
 emu->capture_interrupt = snd_emu10k1_pcm_ac97adc_interrupt;
 emu->pcm_capture_substream = substream;
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, &hw_constraints_capture_period_sizes);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_capture_rates);
 return 0;
}
