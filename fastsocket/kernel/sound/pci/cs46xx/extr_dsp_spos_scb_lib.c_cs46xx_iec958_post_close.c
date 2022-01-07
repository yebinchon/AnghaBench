
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; int * asynch_tx_scb; int * spdif_pcm_input_scb; int spdif_csuv_default; } ;


 int DSP_SPDIF_STATUS_OUTPUT_ENABLED ;
 int DSP_SPDIF_STATUS_PLAYBACK_OPEN ;
 int EINVAL ;
 int SPDIFO_IP_OUTPUT_BUFFER1 ;
 int SP_SPDOUT_CSUV ;
 int _dsp_clear_sample_buffer (struct snd_cs46xx*,int ,int) ;
 int cs46xx_dsp_enable_spdif_out (struct snd_cs46xx*) ;
 int cs46xx_dsp_remove_scb (struct snd_cs46xx*,int *) ;
 int cs46xx_poke_via_dsp (struct snd_cs46xx*,int ,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

int cs46xx_iec958_post_close (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if (snd_BUG_ON(!ins->asynch_tx_scb))
  return -EINVAL;

 ins->spdif_status_out &= ~DSP_SPDIF_STATUS_PLAYBACK_OPEN;


 cs46xx_poke_via_dsp (chip,SP_SPDOUT_CSUV, ins->spdif_csuv_default);


 if (ins->spdif_pcm_input_scb != ((void*)0)) {
  cs46xx_dsp_remove_scb (chip,ins->spdif_pcm_input_scb);
  ins->spdif_pcm_input_scb = ((void*)0);
 }

 cs46xx_dsp_remove_scb (chip,ins->asynch_tx_scb);
 ins->asynch_tx_scb = ((void*)0);


 _dsp_clear_sample_buffer(chip,SPDIFO_IP_OUTPUT_BUFFER1,256);


 if ( ins->spdif_status_out & DSP_SPDIF_STATUS_OUTPUT_ENABLED ) {
  cs46xx_dsp_enable_spdif_out (chip);
 }

 return 0;
}
