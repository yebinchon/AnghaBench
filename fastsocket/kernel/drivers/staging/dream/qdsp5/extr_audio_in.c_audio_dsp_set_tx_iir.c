
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audpre_cmd_iir_config_type {int active_flag; int cmd_id; int iir_params; int num_bands; } ;
struct TYPE_2__ {int iir_params; int num_bands; } ;
struct audio_in {TYPE_1__ iir; scalar_t__ iir_enable; } ;
typedef int cmd ;


 int AUDPREPROC_CMD_CFG_IIR_TUNING_FILTER_PARAMS ;
 int AUDPREPROC_CMD_IIR_ACTIVE_FLAG_DIS ;
 int AUDPREPROC_CMD_IIR_ACTIVE_FLAG_ENA ;
 int audio_send_queue_pre (struct audio_in*,struct audpre_cmd_iir_config_type*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct audpre_cmd_iir_config_type*,int ,int) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int audio_dsp_set_tx_iir(struct audio_in *audio)
{
 struct audpre_cmd_iir_config_type cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDPREPROC_CMD_CFG_IIR_TUNING_FILTER_PARAMS;

 if (audio->iir_enable) {
  cmd.active_flag = AUDPREPROC_CMD_IIR_ACTIVE_FLAG_ENA;
  cmd.num_bands = audio->iir.num_bands;
  memcpy(&cmd.iir_params, &audio->iir.iir_params,
   sizeof(audio->iir.iir_params));
 } else {
  cmd.active_flag = AUDPREPROC_CMD_IIR_ACTIVE_FLAG_DIS;
 }




 return audio_send_queue_pre(audio, &cmd, sizeof(cmd));
}
