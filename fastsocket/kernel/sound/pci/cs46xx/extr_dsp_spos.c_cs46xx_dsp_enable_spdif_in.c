
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int spos_mutex; int reg_lock; int (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;int (* active_ctrl ) (struct snd_cs46xx*,int) ;struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int asynch_rx_scb; int spdif_status_out; int spdif_status_in; int spdif_in_src; } ;


 int ASYNCRX_SCB_ADDR ;
 int DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED ;
 int EINVAL ;
 int SCB_ON_PARENT_SUBLIST_SCB ;
 int SPDIFI_IP_OUTPUT_BUFFER1 ;
 int SPDIFI_SCB_INST ;
 int SP_ASER_COUNTDOWN ;
 int SP_SPDIN_CONTROL ;
 int cs46xx_dsp_create_asynch_fg_rx_scb (struct snd_cs46xx*,char*,int ,int ,int ,int ,int ) ;
 int cs46xx_dsp_scb_set_volume (struct snd_cs46xx*,int ,int,int) ;
 int cs46xx_poke_via_dsp (struct snd_cs46xx*,int ,int) ;
 int cs46xx_src_link (struct snd_cs46xx*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct snd_cs46xx*,int) ;
 int stub2 (struct snd_cs46xx*,int) ;

int cs46xx_dsp_enable_spdif_in (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;


 chip->active_ctrl(chip, 1);
 chip->amplifier_ctrl(chip, 1);

 if (snd_BUG_ON(ins->asynch_rx_scb))
  return -EINVAL;
 if (snd_BUG_ON(!ins->spdif_in_src))
  return -EINVAL;

 mutex_lock(&chip->spos_mutex);

 if ( ! (ins->spdif_status_out & DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED) ) {

  cs46xx_poke_via_dsp (chip,SP_ASER_COUNTDOWN, 0x80000005);





  cs46xx_poke_via_dsp (chip,SP_SPDIN_CONTROL, 0x800003ff);

  ins->spdif_status_out |= DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED;
 }


 ins->asynch_rx_scb = cs46xx_dsp_create_asynch_fg_rx_scb(chip,"AsynchFGRxSCB",
        ASYNCRX_SCB_ADDR,
        SPDIFI_SCB_INST,
        SPDIFI_IP_OUTPUT_BUFFER1,
        ins->spdif_in_src,
        SCB_ON_PARENT_SUBLIST_SCB);

 spin_lock_irq(&chip->reg_lock);







 cs46xx_src_link(chip,ins->spdif_in_src);


 cs46xx_dsp_scb_set_volume (chip,ins->spdif_in_src,0x7fff,0x7fff);

 spin_unlock_irq(&chip->reg_lock);






 ins->spdif_status_in = 1;
 mutex_unlock(&chip->spos_mutex);

 return 0;
}
