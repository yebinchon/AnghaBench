
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* shared_hcd; int flags; TYPE_2__* driver; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_4__ {scalar_t__ (* irq ) (struct usb_hcd*) ;} ;
struct TYPE_3__ {int flags; } ;


 scalar_t__ HCD_DEAD (struct usb_hcd*) ;
 int HCD_FLAG_SAW_IRQ ;
 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_bit (int ,int *) ;
 scalar_t__ stub1 (struct usb_hcd*) ;
 scalar_t__ unlikely (int) ;

irqreturn_t usb_hcd_irq (int irq, void *__hcd)
{
 struct usb_hcd *hcd = __hcd;
 unsigned long flags;
 irqreturn_t rc;





 local_irq_save(flags);

 if (unlikely(HCD_DEAD(hcd) || !HCD_HW_ACCESSIBLE(hcd))) {
  rc = IRQ_NONE;
 } else if (hcd->driver->irq(hcd) == IRQ_NONE) {
  rc = IRQ_NONE;
 } else {
  set_bit(HCD_FLAG_SAW_IRQ, &hcd->flags);
  if (hcd->shared_hcd)
   set_bit(HCD_FLAG_SAW_IRQ, &hcd->shared_hcd->flags);
  rc = IRQ_HANDLED;
 }

 local_irq_restore(flags);
 return rc;
}
