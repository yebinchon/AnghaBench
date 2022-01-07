
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct mimio* context; } ;
struct mimio {int waitq; int txlock; int txflags; TYPE_1__* idev; } ;
struct TYPE_2__ {int dev; } ;


 int MIMIO_TXDONE ;
 int dev_dbg (int *,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;
 int wmb () ;

__attribute__((used)) static void mimio_irq_out(struct urb *urb)
{
 unsigned long flags;
 struct mimio *mimio;

 mimio = urb->context;

 if (urb->status)
  dev_dbg(&mimio->idev->dev, "urb-status: %d.\n", urb->status);

 spin_lock_irqsave(&mimio->txlock, flags);
 mimio->txflags |= MIMIO_TXDONE;
 spin_unlock_irqrestore(&mimio->txlock, flags);
 wmb();
 wake_up(&mimio->waitq);
}
