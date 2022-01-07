
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audplay_cmd_hpcm_buf_cfg {int hostpcm_config; int feedback_frequency; scalar_t__ partition_number; scalar_t__ byte_swap; int max_buffers; int cmd_id; } ;
struct audio {int pcm_buf_count; } ;
typedef int cfg_cmd ;


 int AUDPLAY_CMD_HPCM_BUF_CFG ;
 int audplay_send_queue0 (struct audio*,struct audplay_cmd_hpcm_buf_cfg*,int) ;
 int dprintk (char*) ;

__attribute__((used)) static void audamrnb_config_hostpcm(struct audio *audio)
{
 struct audplay_cmd_hpcm_buf_cfg cfg_cmd;

 dprintk("audamrnb_config_hostpcm()\n");
 cfg_cmd.cmd_id = AUDPLAY_CMD_HPCM_BUF_CFG;
 cfg_cmd.max_buffers = audio->pcm_buf_count;
 cfg_cmd.byte_swap = 0;
 cfg_cmd.hostpcm_config = (0x8000) | (0x4000);
 cfg_cmd.feedback_frequency = 1;
 cfg_cmd.partition_number = 0;
 (void)audplay_send_queue0(audio, &cfg_cmd, sizeof(cfg_cmd));

}
