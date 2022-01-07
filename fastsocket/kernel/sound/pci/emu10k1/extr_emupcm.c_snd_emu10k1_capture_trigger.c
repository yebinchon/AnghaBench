
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; int first_ptr; int type; int capture_bs_reg; int capture_ipr; int capture_inte; int capture_bs_val; int capture_cr_val; int capture_cr_val2; } ;
struct snd_emu10k1 {int reg_lock; int audigy; scalar_t__ port; } ;


 int ADCCR ;
 int A_FXWC1 ;
 int A_FXWC2 ;


 int EINVAL ;
 int FXWC ;
 scalar_t__ IPR ;




 int outl (int ,scalar_t__) ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_intr_enable (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int ) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_printdd (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_emu10k1_capture_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 int result = 0;

 spin_lock(&emu->reg_lock);
 switch (cmd) {
 case 130:
 case 131:

  outl(epcm->capture_ipr, emu->port + IPR);
  snd_emu10k1_intr_enable(emu, epcm->capture_inte);




  switch (epcm->type) {
  case 133:
   snd_emu10k1_ptr_write(emu, ADCCR, 0, epcm->capture_cr_val);
   break;
  case 132:
   if (emu->audigy) {
    snd_emu10k1_ptr_write(emu, A_FXWC1, 0, epcm->capture_cr_val);
    snd_emu10k1_ptr_write(emu, A_FXWC2, 0, epcm->capture_cr_val2);
    snd_printdd("cr_val=0x%x, cr_val2=0x%x\n", epcm->capture_cr_val, epcm->capture_cr_val2);
   } else
    snd_emu10k1_ptr_write(emu, FXWC, 0, epcm->capture_cr_val);
   break;
  default:
   break;
  }
  snd_emu10k1_ptr_write(emu, epcm->capture_bs_reg, 0, epcm->capture_bs_val);
  epcm->running = 1;
  epcm->first_ptr = 1;
  break;
 case 129:
 case 128:
  epcm->running = 0;
  snd_emu10k1_intr_disable(emu, epcm->capture_inte);
  outl(epcm->capture_ipr, emu->port + IPR);
  snd_emu10k1_ptr_write(emu, epcm->capture_bs_reg, 0, 0);
  switch (epcm->type) {
  case 133:
   snd_emu10k1_ptr_write(emu, ADCCR, 0, 0);
   break;
  case 132:
   if (emu->audigy) {
    snd_emu10k1_ptr_write(emu, A_FXWC1, 0, 0);
    snd_emu10k1_ptr_write(emu, A_FXWC2, 0, 0);
   } else
    snd_emu10k1_ptr_write(emu, FXWC, 0, 0);
   break;
  default:
   break;
  }
  break;
 default:
  result = -EINVAL;
 }
 spin_unlock(&emu->reg_lock);
 return result;
}
