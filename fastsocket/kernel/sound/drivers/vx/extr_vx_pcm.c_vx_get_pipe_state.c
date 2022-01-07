
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int* Stat; } ;
struct vx_pipe {int number; int is_capture; } ;
struct vx_core {int dummy; } ;


 int CMD_PIPE_STATE ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;
 int vx_set_pipe_cmd_params (struct vx_rmh*,int ,int,int ) ;

__attribute__((used)) static int vx_get_pipe_state(struct vx_core *chip, struct vx_pipe *pipe, int *state)
{
 int err;
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_PIPE_STATE);
 vx_set_pipe_cmd_params(&rmh, pipe->is_capture, pipe->number, 0);
 err = vx_send_msg_nolock(chip, &rmh);
 if (! err)
  *state = (rmh.Stat[0] & (1 << pipe->number)) ? 1 : 0;
 return err;
}
