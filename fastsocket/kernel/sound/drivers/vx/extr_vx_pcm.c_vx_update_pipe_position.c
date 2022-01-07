
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vx_rmh {int* Stat; } ;
struct vx_pipe {int cur_count; int position; int transferred; int number; int is_capture; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {int buffer_size; } ;


 int CMD_STREAM_SAMPLE_COUNT ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg (struct vx_core*,struct vx_rmh*) ;
 int vx_set_pipe_cmd_params (struct vx_rmh*,int ,int ,int ) ;

__attribute__((used)) static int vx_update_pipe_position(struct vx_core *chip,
       struct snd_pcm_runtime *runtime,
       struct vx_pipe *pipe)
{
 struct vx_rmh rmh;
 int err, update;
 u64 count;

 vx_init_rmh(&rmh, CMD_STREAM_SAMPLE_COUNT);
 vx_set_pipe_cmd_params(&rmh, pipe->is_capture, pipe->number, 0);
 err = vx_send_msg(chip, &rmh);
 if (err < 0)
  return err;

 count = ((u64)(rmh.Stat[0] & 0xfffff) << 24) | (u64)rmh.Stat[1];
 update = (int)(count - pipe->cur_count);
 pipe->cur_count = count;
 pipe->position += update;
 if (pipe->position >= (int)runtime->buffer_size)
  pipe->position %= runtime->buffer_size;
 pipe->transferred += update;
 return 0;
}
