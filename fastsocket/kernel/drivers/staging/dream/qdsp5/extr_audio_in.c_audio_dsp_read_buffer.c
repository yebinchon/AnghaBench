
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct audio_in {int dummy; } ;
typedef int cmd ;
struct TYPE_4__ {int curr_rec_count_msw; int curr_rec_count_lsw; int type; int cmd_id; } ;
typedef TYPE_1__ audrec_cmd_packet_ext_ptr ;


 int AUDREC_CMD_PACKET_EXT_PTR ;
 int AUDREC_CMD_TYPE_0 ;
 int audio_send_queue_recbs (struct audio_in*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int audio_dsp_read_buffer(struct audio_in *audio, uint32_t read_cnt)
{
 audrec_cmd_packet_ext_ptr cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDREC_CMD_PACKET_EXT_PTR;

 cmd.type = AUDREC_CMD_TYPE_0;
 cmd.curr_rec_count_msw = read_cnt >> 16;
 cmd.curr_rec_count_lsw = read_cnt;

 return audio_send_queue_recbs(audio, &cmd, sizeof(cmd));
}
