
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int dummy; } ;
struct vx_core {int dummy; } ;


 int CMD_SEND_IRQA ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;

__attribute__((used)) static int vx_send_irqa(struct vx_core *chip)
{
 struct vx_rmh rmh;

 vx_init_rmh(&rmh, CMD_SEND_IRQA);
 return vx_send_msg_nolock(chip, &rmh);
}
