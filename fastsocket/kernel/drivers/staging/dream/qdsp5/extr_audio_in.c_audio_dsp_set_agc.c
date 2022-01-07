
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int * agc_params; } ;
struct audio_in {TYPE_1__ agc; scalar_t__ agc_enable; } ;
typedef int cmd ;
struct TYPE_6__ {int cmd_id; int tx_agc_param_mask; int tx_agc_enable_flag; int static_gain; int param_mask; int aig_attackk; int adaptive_gain_flag; int expander_th; int expander_slope; int compressor_th; int compressor_slope; int aig_leak_down; int aig_leak_up; int aig_max; int aig_min; int aig_releasek; int aig_leakrate_fast; int aig_leakrate_slow; int attackk_msw; int attackk_lsw; int delay; int releasek_msw; int releasek_lsw; int rms_tav; } ;
typedef TYPE_2__ audpreproc_cmd_cfg_agc_params ;


 int AUDPREPROC_CMD_CFG_AGC_PARAMS ;
 int AUDPREPROC_CMD_PARAM_MASK_AIG_ATTACKK ;
 int AUDPREPROC_CMD_PARAM_MASK_AIG_MAX ;
 int AUDPREPROC_CMD_PARAM_MASK_AIG_MIN ;
 int AUDPREPROC_CMD_PARAM_MASK_AIG_RELEASEK ;
 int AUDPREPROC_CMD_PARAM_MASK_ATTACKK ;
 int AUDPREPROC_CMD_PARAM_MASK_DELAY ;
 int AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_FAST ;
 int AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_SLOW ;
 int AUDPREPROC_CMD_PARAM_MASK_LEAK_DOWN ;
 int AUDPREPROC_CMD_PARAM_MASK_LEAK_UP ;
 int AUDPREPROC_CMD_PARAM_MASK_RELEASEK ;
 int AUDPREPROC_CMD_PARAM_MASK_RMS_TAY ;
 int AUDPREPROC_CMD_TX_AGC_ENA_FLAG_DIS ;
 int AUDPREPROC_CMD_TX_AGC_ENA_FLAG_ENA ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_AIG_FLAG ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_SLOPE ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_STATIC_GAIN ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_TH ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_SLOPE ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_TH ;
 int AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG ;
 int audio_send_queue_pre (struct audio_in*,TYPE_2__*,int) ;
 int memcpy (int*,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int pr_info (char*,int) ;

__attribute__((used)) static int audio_dsp_set_agc(struct audio_in *audio)
{
 audpreproc_cmd_cfg_agc_params cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDPREPROC_CMD_CFG_AGC_PARAMS;

 if (audio->agc_enable) {

  cmd.tx_agc_param_mask =
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_SLOPE) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_TH) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_SLOPE) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_TH) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_AIG_FLAG) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_STATIC_GAIN) |
  (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG);
  cmd.tx_agc_enable_flag =
   AUDPREPROC_CMD_TX_AGC_ENA_FLAG_ENA;
  memcpy(&cmd.static_gain, &audio->agc.agc_params[0],
   sizeof(uint16_t) * 6);

  cmd.param_mask =
   (1 << AUDPREPROC_CMD_PARAM_MASK_RMS_TAY) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_RELEASEK) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_DELAY) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_ATTACKK) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_SLOW) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_FAST) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_AIG_RELEASEK) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_AIG_MIN) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_AIG_MAX) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_LEAK_UP) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_LEAK_DOWN) |
   (1 << AUDPREPROC_CMD_PARAM_MASK_AIG_ATTACKK);
  memcpy(&cmd.aig_attackk, &audio->agc.agc_params[6],
   sizeof(uint16_t) * 14);

 } else {
  cmd.tx_agc_param_mask =
   (1 << AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG);
  cmd.tx_agc_enable_flag =
   AUDPREPROC_CMD_TX_AGC_ENA_FLAG_DIS;
 }
 return audio_send_queue_pre(audio, &cmd, sizeof(cmd));
}
