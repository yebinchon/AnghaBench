
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; int spdif_csuv_stream; int master_mix_scb; int asynch_tx_scb; } ;


 int ASYNCTX_SCB_ADDR ;
 int DSP_SPDIF_STATUS_HW_ENABLED ;
 int DSP_SPDIF_STATUS_OUTPUT_ENABLED ;
 int DSP_SPDIF_STATUS_PLAYBACK_OPEN ;
 int SCB_ON_PARENT_NEXT_SCB ;
 int SPDIFO_IP_OUTPUT_BUFFER1 ;
 int SPDIFO_SCB_INST ;
 int SP_SPDOUT_CSUV ;
 int cs46xx_dsp_create_asynch_fg_tx_scb (struct snd_cs46xx*,char*,int ,int ,int ,int ,int ) ;
 int cs46xx_dsp_disable_spdif_out (struct snd_cs46xx*) ;
 int cs46xx_dsp_enable_spdif_hw (struct snd_cs46xx*) ;
 int cs46xx_poke_via_dsp (struct snd_cs46xx*,int ,int ) ;

int cs46xx_iec958_pre_open (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if ( ins->spdif_status_out & DSP_SPDIF_STATUS_OUTPUT_ENABLED ) {

  cs46xx_dsp_disable_spdif_out (chip);


  ins->spdif_status_out |= DSP_SPDIF_STATUS_OUTPUT_ENABLED;
 }


 if ( !(ins->spdif_status_out & DSP_SPDIF_STATUS_HW_ENABLED) ) {
  cs46xx_dsp_enable_spdif_hw (chip);
 }


 ins->asynch_tx_scb = cs46xx_dsp_create_asynch_fg_tx_scb(chip,"AsynchFGTxSCB",ASYNCTX_SCB_ADDR,
        SPDIFO_SCB_INST,
        SPDIFO_IP_OUTPUT_BUFFER1,
        ins->master_mix_scb,
        SCB_ON_PARENT_NEXT_SCB);



 cs46xx_poke_via_dsp (chip,SP_SPDOUT_CSUV, ins->spdif_csuv_stream);

 ins->spdif_status_out |= DSP_SPDIF_STATUS_PLAYBACK_OPEN;

 return 0;
}
