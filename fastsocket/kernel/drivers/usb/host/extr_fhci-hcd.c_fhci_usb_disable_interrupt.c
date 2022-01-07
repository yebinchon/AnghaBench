
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fhci_usb {scalar_t__ intr_nesting_cnt; struct fhci_hcd* fhci; } ;
struct fhci_hcd {TYPE_2__* regs; TYPE_1__* timer; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int usb_mask; } ;
struct TYPE_4__ {int irq; } ;


 int disable_irq_nosync (int ) ;
 TYPE_3__* fhci_to_hcd (struct fhci_hcd*) ;
 int out_be16 (int *,int ) ;

void fhci_usb_disable_interrupt(struct fhci_usb *usb)
{
 struct fhci_hcd *fhci = usb->fhci;

 if (usb->intr_nesting_cnt == 0) {

  disable_irq_nosync(fhci->timer->irq);


  disable_irq_nosync(fhci_to_hcd(fhci)->irq);
  out_be16(&usb->fhci->regs->usb_mask, 0);
 }
 usb->intr_nesting_cnt++;
}
