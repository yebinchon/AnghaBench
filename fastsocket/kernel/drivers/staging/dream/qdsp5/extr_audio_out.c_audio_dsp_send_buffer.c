
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct audio {int dummy; } ;
typedef int cmd ;
struct TYPE_3__ {unsigned int arm_to_dsp_buf_id; unsigned int arm_to_dsp_buf_len; scalar_t__ dsp_to_arm_buf_id; int intf_type; int config; int host_pcm_object; int cmd_id; } ;
typedef TYPE_1__ audpp_cmd_pcm_intf_send_buffer ;


 int AUDPP_CMD_PCM_INTF_2 ;
 int AUDPP_CMD_PCM_INTF_BUFFER_CMD_V ;
 int AUDPP_CMD_PCM_INTF_OBJECT_NUM ;
 int AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V ;
 int EV_SEND_BUFFER ;
 int LOG (int ,unsigned int) ;
 int audpp_send_queue2 (TYPE_1__*,int) ;

__attribute__((used)) static int audio_dsp_send_buffer(struct audio *audio, unsigned idx, unsigned len)
{
 audpp_cmd_pcm_intf_send_buffer cmd;

 cmd.cmd_id = AUDPP_CMD_PCM_INTF_2;
 cmd.host_pcm_object = AUDPP_CMD_PCM_INTF_OBJECT_NUM;
 cmd.config = AUDPP_CMD_PCM_INTF_BUFFER_CMD_V;
 cmd.intf_type = AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V;
 cmd.dsp_to_arm_buf_id = 0;
 cmd.arm_to_dsp_buf_id = idx + 1;
 cmd.arm_to_dsp_buf_len = len;

 LOG(EV_SEND_BUFFER, idx);
 return audpp_send_queue2(&cmd, sizeof(cmd));
}
