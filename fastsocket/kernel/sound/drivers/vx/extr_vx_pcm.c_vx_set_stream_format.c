
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int* Cmd; size_t LgCmd; } ;
struct vx_pipe {int number; scalar_t__ is_capture; } ;
struct vx_core {int dummy; } ;


 int CMD_FORMAT_STREAM_IN ;
 int CMD_FORMAT_STREAM_OUT ;
 int FIELD_SIZE ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg (struct vx_core*,struct vx_rmh*) ;
 int vx_set_differed_time (struct vx_core*,struct vx_rmh*,struct vx_pipe*) ;

__attribute__((used)) static int vx_set_stream_format(struct vx_core *chip, struct vx_pipe *pipe,
    unsigned int data)
{
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, pipe->is_capture ?
      CMD_FORMAT_STREAM_IN : CMD_FORMAT_STREAM_OUT);
 rmh.Cmd[0] |= pipe->number << FIELD_SIZE;


 vx_set_differed_time(chip, &rmh, pipe);

 rmh.Cmd[rmh.LgCmd] = (data & 0xFFFFFF00) >> 8;
 rmh.Cmd[rmh.LgCmd + 1] = (data & 0xFF) << 16 ;
 rmh.LgCmd += 2;

 return vx_send_msg(chip, &rmh);
}
