
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int* Cmd; } ;
struct vx_core {int dummy; } ;


 int CMD_RESYNC_AUDIO_INPUTS ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg (struct vx_core*,struct vx_rmh*) ;

__attribute__((used)) static int vx_modify_board_inputs(struct vx_core *chip)
{
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_RESYNC_AUDIO_INPUTS);
        rmh.Cmd[0] |= 1 << 0;
 return vx_send_msg(chip, &rmh);
}
