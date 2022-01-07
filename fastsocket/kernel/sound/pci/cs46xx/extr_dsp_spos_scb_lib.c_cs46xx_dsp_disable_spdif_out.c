
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; TYPE_2__* asynch_tx_scb; TYPE_2__* spdif_pcm_input_scb; TYPE_1__* master_mix_scb; } ;
struct TYPE_4__ {TYPE_1__* parent_scb_ptr; } ;
struct TYPE_3__ {TYPE_2__* next_scb_ptr; } ;


 int DSP_SPDIF_STATUS_OUTPUT_ENABLED ;
 int DSP_SPDIF_STATUS_PLAYBACK_OPEN ;
 int EBUSY ;
 int EINVAL ;
 int SPDIFO_IP_OUTPUT_BUFFER1 ;
 int _dsp_clear_sample_buffer (struct snd_cs46xx*,int ,int) ;
 int cs46xx_dsp_remove_scb (struct snd_cs46xx*,TYPE_2__*) ;
 scalar_t__ snd_BUG_ON (int) ;

int cs46xx_dsp_disable_spdif_out (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;


 if ( ins->spdif_status_out & DSP_SPDIF_STATUS_PLAYBACK_OPEN) {
  ins->spdif_status_out &= ~DSP_SPDIF_STATUS_OUTPUT_ENABLED;
  return -EBUSY;
 }


 if (snd_BUG_ON(!ins->asynch_tx_scb))
  return -EINVAL;
 if (snd_BUG_ON(!ins->spdif_pcm_input_scb))
  return -EINVAL;
 if (snd_BUG_ON(ins->master_mix_scb->next_scb_ptr != ins->asynch_tx_scb))
  return -EINVAL;
 if (snd_BUG_ON(ins->asynch_tx_scb->parent_scb_ptr !=
         ins->master_mix_scb))
  return -EINVAL;

 cs46xx_dsp_remove_scb (chip,ins->spdif_pcm_input_scb);
 cs46xx_dsp_remove_scb (chip,ins->asynch_tx_scb);

 ins->spdif_pcm_input_scb = ((void*)0);
 ins->asynch_tx_scb = ((void*)0);


 _dsp_clear_sample_buffer(chip,SPDIFO_IP_OUTPUT_BUFFER1,256);


 ins->spdif_status_out &= ~DSP_SPDIF_STATUS_OUTPUT_ENABLED;


 return 0;
}
