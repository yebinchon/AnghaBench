
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int* Cmd; int* Stat; } ;
struct vx_pipe {int is_capture; int number; } ;
struct vx_core {int dummy; } ;


 int CMD_SIZE_HBUFFER ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg (struct vx_core*,struct vx_rmh*) ;
 int vx_set_pipe_cmd_params (struct vx_rmh*,int ,int ,int ) ;

__attribute__((used)) static int vx_query_hbuffer_size(struct vx_core *chip, struct vx_pipe *pipe)
{
 int result;
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_SIZE_HBUFFER);
 vx_set_pipe_cmd_params(&rmh, pipe->is_capture, pipe->number, 0);
 if (pipe->is_capture)
  rmh.Cmd[0] |= 0x00000001;
 result = vx_send_msg(chip, &rmh);
 if (! result)
  result = rmh.Stat[0] & 0xffff;
 return result;
}
