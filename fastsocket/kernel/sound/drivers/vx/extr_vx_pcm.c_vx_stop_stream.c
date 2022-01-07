
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int dummy; } ;
struct vx_pipe {int number; int is_capture; } ;
struct vx_core {int dummy; } ;


 int CMD_STOP_STREAM ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;
 int vx_set_stream_cmd_params (struct vx_rmh*,int ,int ) ;

__attribute__((used)) static int vx_stop_stream(struct vx_core *chip, struct vx_pipe *pipe)
{
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_STOP_STREAM);
 vx_set_stream_cmd_params(&rmh, pipe->is_capture, pipe->number);
 return vx_send_msg_nolock(chip, &rmh);
}
