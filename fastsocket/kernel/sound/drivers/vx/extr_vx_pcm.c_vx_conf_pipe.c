
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int* Cmd; } ;
struct vx_pipe {int number; scalar_t__ is_capture; } ;
struct vx_core {int dummy; } ;


 int CMD_CONF_PIPE ;
 int COMMAND_RECORD_MASK ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;

__attribute__((used)) static int vx_conf_pipe(struct vx_core *chip, struct vx_pipe *pipe)
{
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_CONF_PIPE);
 if (pipe->is_capture)
  rmh.Cmd[0] |= COMMAND_RECORD_MASK;
 rmh.Cmd[1] = 1 << pipe->number;
 return vx_send_msg_nolock(chip, &rmh);
}
