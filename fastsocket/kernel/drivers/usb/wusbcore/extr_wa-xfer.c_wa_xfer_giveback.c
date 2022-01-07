
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wa_xfer {TYPE_1__* wa; int result; int urb; int list_node; } ;
struct TYPE_2__ {int wusb; int xfer_list_lock; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wa_put (TYPE_1__*) ;
 int wa_xfer_put (struct wa_xfer*) ;
 int wusbhc_giveback_urb (int ,int ,int ) ;

__attribute__((used)) static void wa_xfer_giveback(struct wa_xfer *xfer)
{
 unsigned long flags;

 spin_lock_irqsave(&xfer->wa->xfer_list_lock, flags);
 list_del_init(&xfer->list_node);
 spin_unlock_irqrestore(&xfer->wa->xfer_list_lock, flags);

 wusbhc_giveback_urb(xfer->wa->wusb, xfer->urb, xfer->result);
 wa_put(xfer->wa);
 wa_xfer_put(xfer);
}
