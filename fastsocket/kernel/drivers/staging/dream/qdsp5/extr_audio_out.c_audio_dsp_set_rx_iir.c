
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iir_params; int num_bands; } ;
struct audio {TYPE_1__ iir; scalar_t__ rx_iir_enable; } ;
typedef int cmd ;
struct TYPE_7__ {int command_type; int comman_cfg; } ;
struct TYPE_8__ {int active_flag; int iir_params; int num_bands; TYPE_2__ common; } ;
typedef TYPE_3__ audpp_cmd_cfg_object_params_rx_iir ;


 int AUDPP_CMD_CFG_OBJ_UPDATE ;
 int AUDPP_CMD_IIR_FLAG_DIS ;
 int AUDPP_CMD_IIR_FLAG_ENA ;
 int AUDPP_CMD_IIR_TUNING_FILTER ;
 int audpp_send_queue3 (TYPE_3__*,int) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int audio_dsp_set_rx_iir(struct audio *audio)
{
 audpp_cmd_cfg_object_params_rx_iir cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.common.comman_cfg = AUDPP_CMD_CFG_OBJ_UPDATE;
 cmd.common.command_type = AUDPP_CMD_IIR_TUNING_FILTER;

 if (audio->rx_iir_enable) {
  cmd.active_flag = AUDPP_CMD_IIR_FLAG_ENA;
  cmd.num_bands = audio->iir.num_bands;
  memcpy(&cmd.iir_params, audio->iir.iir_params,
         sizeof(audio->iir.iir_params));
 } else {
  cmd.active_flag = AUDPP_CMD_IIR_FLAG_DIS;
 }

 return audpp_send_queue3(&cmd, sizeof(cmd));
}
