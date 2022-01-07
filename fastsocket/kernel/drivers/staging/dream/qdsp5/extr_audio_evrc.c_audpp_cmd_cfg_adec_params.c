
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int input_sampling_frequency; int dec_id; int cmd_id; } ;
struct audpp_cmd_cfg_adec_params_evrc {int stereo_cfg; TYPE_1__ common; } ;
struct audio {int dec_id; } ;
typedef int cmd ;


 int AUDPP_CMD_CFG_ADEC_PARAMS ;
 int AUDPP_CMD_PCM_INTF_MONO_V ;
 int audpp_send_queue2 (struct audpp_cmd_cfg_adec_params_evrc*,int) ;
 int memset (struct audpp_cmd_cfg_adec_params_evrc*,int ,int) ;

__attribute__((used)) static void audpp_cmd_cfg_adec_params(struct audio *audio)
{
 struct audpp_cmd_cfg_adec_params_evrc cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.common.cmd_id = AUDPP_CMD_CFG_ADEC_PARAMS;
 cmd.common.length = sizeof(cmd);
 cmd.common.dec_id = audio->dec_id;
 cmd.common.input_sampling_frequency = 8000;
 cmd.stereo_cfg = AUDPP_CMD_PCM_INTF_MONO_V;

 audpp_send_queue2(&cmd, sizeof(cmd));
}
