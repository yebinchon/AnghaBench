
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct audio {int out_channel_mode; int out_sample_rate; int out_weight; TYPE_1__* out; } ;
typedef int cmd ;
struct TYPE_6__ {int write_buf1LSW; int write_buf1MSW; int write_buf2LSW; int write_buf2MSW; int weight_arm_to_rx; int channel_mode; int sample_rate; scalar_t__ partition_number_arm_to_dsp; int weight_decoder_to_rx; int arm_to_rx_flag; int write_buf2_len; int write_buf1_len; int intf_type; int config; int object_num; int cmd_id; } ;
typedef TYPE_2__ audpp_cmd_pcm_intf ;
struct TYPE_5__ {int addr; int size; } ;


 int AUDPP_CMD_PCM_INTF_2 ;
 int AUDPP_CMD_PCM_INTF_CONFIG_CMD_V ;
 int AUDPP_CMD_PCM_INTF_ENA_V ;
 int AUDPP_CMD_PCM_INTF_OBJECT_NUM ;
 int AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V ;
 int audpp_send_queue2 (TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int audio_dsp_out_enable(struct audio *audio, int yes)
{
 audpp_cmd_pcm_intf cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDPP_CMD_PCM_INTF_2;
 cmd.object_num = AUDPP_CMD_PCM_INTF_OBJECT_NUM;
 cmd.config = AUDPP_CMD_PCM_INTF_CONFIG_CMD_V;
 cmd.intf_type = AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V;

 if (yes) {
  cmd.write_buf1LSW = audio->out[0].addr;
  cmd.write_buf1MSW = audio->out[0].addr >> 16;
  cmd.write_buf1_len = audio->out[0].size;
  cmd.write_buf2LSW = audio->out[1].addr;
  cmd.write_buf2MSW = audio->out[1].addr >> 16;
  cmd.write_buf2_len = audio->out[1].size;
  cmd.arm_to_rx_flag = AUDPP_CMD_PCM_INTF_ENA_V;
  cmd.weight_decoder_to_rx = audio->out_weight;
  cmd.weight_arm_to_rx = 1;
  cmd.partition_number_arm_to_dsp = 0;
  cmd.sample_rate = audio->out_sample_rate;
  cmd.channel_mode = audio->out_channel_mode;
 }

 return audpp_send_queue2(&cmd, sizeof(cmd));
}
