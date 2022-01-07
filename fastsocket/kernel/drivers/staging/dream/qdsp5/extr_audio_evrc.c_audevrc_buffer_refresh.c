
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audplay_cmd_buffer_refresh {int num_buffers; int buf0_length; int buf0_address; scalar_t__ buf_read_count; int cmd_id; } ;
struct audio {size_t fill_next; TYPE_1__* in; } ;
typedef int refresh_cmd ;
struct TYPE_2__ {int size; int addr; } ;


 int AUDPLAY_CMD_BUFFER_REFRESH ;
 int audplay_send_queue0 (struct audio*,struct audplay_cmd_buffer_refresh*,int) ;
 int dprintk (char*,int ,int ) ;

__attribute__((used)) static void audevrc_buffer_refresh(struct audio *audio)
{
 struct audplay_cmd_buffer_refresh refresh_cmd;

 refresh_cmd.cmd_id = AUDPLAY_CMD_BUFFER_REFRESH;
 refresh_cmd.num_buffers = 1;
 refresh_cmd.buf0_address = audio->in[audio->fill_next].addr;
 refresh_cmd.buf0_length = audio->in[audio->fill_next].size;

 refresh_cmd.buf_read_count = 0;
 dprintk("audplay_buffer_fresh: buf0_addr=%x buf0_len=%d\n",
  refresh_cmd.buf0_address, refresh_cmd.buf0_length);
 audplay_send_queue0(audio, &refresh_cmd, sizeof(refresh_cmd));
}
