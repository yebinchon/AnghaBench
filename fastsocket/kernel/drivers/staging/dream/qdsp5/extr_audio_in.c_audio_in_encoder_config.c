
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct audio_in {int phys; scalar_t__ type; scalar_t__ channel_mode; TYPE_1__* in; int samp_rate_index; scalar_t__ data; } ;
typedef int cmd ;
struct TYPE_6__ {int ptr_to_extpkt_buffer_msw; int ptr_to_extpkt_buffer_lsw; unsigned int buf_len; int rec_quality; scalar_t__ stereo_mode; int samp_rate_index; int cmd_id; } ;
typedef TYPE_2__ audrec_cmd_arec0param_cfg ;
struct TYPE_5__ {int * data; } ;


 int AUDREC_CMD_AREC0PARAM_CFG ;
 scalar_t__ AUDREC_CMD_TYPE_0_INDEX_AAC ;
 scalar_t__ AUDREC_CMD_TYPE_0_INDEX_WAV ;
 unsigned int FRAME_NUM ;
 int audio_send_queue_rec (struct audio_in*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int audio_in_encoder_config(struct audio_in *audio)
{
 audrec_cmd_arec0param_cfg cmd;
 uint16_t *data = (void *) audio->data;
 unsigned n;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDREC_CMD_AREC0PARAM_CFG;
 cmd.ptr_to_extpkt_buffer_msw = audio->phys >> 16;
 cmd.ptr_to_extpkt_buffer_lsw = audio->phys;
 cmd.buf_len = FRAME_NUM;
 cmd.samp_rate_index = audio->samp_rate_index;
 cmd.stereo_mode = audio->channel_mode;




 cmd.rec_quality = 0x1C00;







 for (n = 0; n < FRAME_NUM; n++) {
  audio->in[n].data = data + 4;
  if (audio->type == AUDREC_CMD_TYPE_0_INDEX_WAV)
   data += (4 + (audio->channel_mode ? 2048 : 1024));
  else if (audio->type == AUDREC_CMD_TYPE_0_INDEX_AAC)
   data += (4 + 768);
 }

 return audio_send_queue_rec(audio, &cmd, sizeof(cmd));
}
