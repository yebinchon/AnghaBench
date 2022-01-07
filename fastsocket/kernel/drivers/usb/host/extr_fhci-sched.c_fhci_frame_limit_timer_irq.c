
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct fhci_usb {int ep0; TYPE_1__* actual_frame; } ;
struct fhci_hcd {int lock; int timer; struct fhci_usb* usb_lld; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ frame_status; } ;


 scalar_t__ FRAME_IS_TRANSMITTED ;
 scalar_t__ FRAME_TIMER_END_TRANSMISSION ;
 int IRQ_HANDLED ;
 int fhci_push_dummy_bd (int ) ;
 int fhci_schedule_transactions (struct fhci_usb*) ;
 int gtm_set_exact_timer16 (int ,int,int) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t fhci_frame_limit_timer_irq(int irq, void *_hcd)
{
 struct usb_hcd *hcd = _hcd;
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);
 struct fhci_usb *usb = fhci->usb_lld;

 spin_lock(&fhci->lock);

 gtm_set_exact_timer16(fhci->timer, 1000, 0);

 if (usb->actual_frame->frame_status == FRAME_IS_TRANSMITTED) {
  usb->actual_frame->frame_status = FRAME_TIMER_END_TRANSMISSION;
  fhci_push_dummy_bd(usb->ep0);
 }

 fhci_schedule_transactions(usb);

 spin_unlock(&fhci->lock);

 return IRQ_HANDLED;
}
