
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int channel_configuration; int sbr_ps_on_flag; int sbr_on_flag; int aac_spectral_data_resilience_flag; int aac_scalefactor_data_resilience_flag; int aac_section_data_resilience_flag; int ep_config; int audio_object; int format; } ;
struct audio {TYPE_2__ aac_config; int out_sample_rate; int dec_id; } ;
typedef int cmd ;
struct TYPE_6__ {int input_sampling_frequency; int dec_id; int length; int cmd_id; } ;
struct TYPE_8__ {int channel_configuration; int sbr_ps_on_flag; int sbr_on_flag; int aac_spectral_data_resilience_flag; int aac_scalefactor_data_resilience_flag; int aac_section_data_resilience_flag; int ep_config; int audio_object; int format; TYPE_1__ common; } ;
typedef TYPE_3__ audpp_cmd_cfg_adec_params_aac ;


 int AUDPP_CMD_CFG_ADEC_PARAMS ;
 int AUDPP_CMD_CFG_ADEC_PARAMS_AAC_LEN ;
 int audpp_send_queue2 (TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void audpp_cmd_cfg_adec_params(struct audio *audio)
{
 audpp_cmd_cfg_adec_params_aac cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.common.cmd_id = AUDPP_CMD_CFG_ADEC_PARAMS;
 cmd.common.length = AUDPP_CMD_CFG_ADEC_PARAMS_AAC_LEN;
 cmd.common.dec_id = audio->dec_id;
 cmd.common.input_sampling_frequency = audio->out_sample_rate;
 cmd.format = audio->aac_config.format;
 cmd.audio_object = audio->aac_config.audio_object;
 cmd.ep_config = audio->aac_config.ep_config;
 cmd.aac_section_data_resilience_flag =
  audio->aac_config.aac_section_data_resilience_flag;
 cmd.aac_scalefactor_data_resilience_flag =
  audio->aac_config.aac_scalefactor_data_resilience_flag;
 cmd.aac_spectral_data_resilience_flag =
  audio->aac_config.aac_spectral_data_resilience_flag;
 cmd.sbr_on_flag = audio->aac_config.sbr_on_flag;
 cmd.sbr_ps_on_flag = audio->aac_config.sbr_ps_on_flag;
 cmd.channel_configuration = audio->aac_config.channel_configuration;

 audpp_send_queue2(&cmd, sizeof(cmd));
}
