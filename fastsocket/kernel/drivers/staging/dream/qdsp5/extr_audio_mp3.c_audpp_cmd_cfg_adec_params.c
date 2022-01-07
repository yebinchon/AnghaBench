
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct audio {int out_sample_rate; int dec_id; } ;
typedef int cmd ;
struct TYPE_5__ {int input_sampling_frequency; int dec_id; int length; int cmd_id; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef TYPE_2__ audpp_cmd_cfg_adec_params_mp3 ;


 int AUDPP_CMD_CFG_ADEC_PARAMS ;
 int AUDPP_CMD_CFG_ADEC_PARAMS_MP3_LEN ;
 int audpp_send_queue2 (TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void audpp_cmd_cfg_adec_params(struct audio *audio)
{
 audpp_cmd_cfg_adec_params_mp3 cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.common.cmd_id = AUDPP_CMD_CFG_ADEC_PARAMS;
 cmd.common.length = AUDPP_CMD_CFG_ADEC_PARAMS_MP3_LEN;
 cmd.common.dec_id = audio->dec_id;
 cmd.common.input_sampling_frequency = audio->out_sample_rate;

 audpp_send_queue2(&cmd, sizeof(cmd));
}
