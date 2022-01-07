
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {scalar_t__ sleeping; int lock; scalar_t__ wcomplete; int present; } ;


 int EAGAIN ;
 int EINTR ;
 int ENODEV ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int usblp_wtest(struct usblp *usblp, int nonblock)
{
 unsigned long flags;

 if (!usblp->present)
  return -ENODEV;
 if (signal_pending(current))
  return -EINTR;
 spin_lock_irqsave(&usblp->lock, flags);
 if (usblp->wcomplete) {
  spin_unlock_irqrestore(&usblp->lock, flags);
  return 0;
 }
 spin_unlock_irqrestore(&usblp->lock, flags);
 if (usblp->sleeping)
  return -ENODEV;
 if (nonblock)
  return -EAGAIN;
 return 1;
}
