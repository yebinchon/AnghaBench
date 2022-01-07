
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vx_send_rih_nolock (struct vx_core*,int) ;

int vx_send_rih(struct vx_core *chip, int cmd)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&chip->lock, flags);
 err = vx_send_rih_nolock(chip, cmd);
 spin_unlock_irqrestore(&chip->lock, flags);
 return err;
}
