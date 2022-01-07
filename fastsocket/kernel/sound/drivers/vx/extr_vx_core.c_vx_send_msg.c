
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int dummy; } ;
struct vx_core {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;

int vx_send_msg(struct vx_core *chip, struct vx_rmh *rmh)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&chip->lock, flags);
 err = vx_send_msg_nolock(chip, rmh);
 spin_unlock_irqrestore(&chip->lock, flags);
 return err;
}
