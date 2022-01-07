
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* ed; } ;
typedef TYPE_1__ urb_priv_t ;
struct usb_hcd {int state; } ;
struct urb {TYPE_1__* hcpriv; } ;
struct ohci_hcd {int lock; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 scalar_t__ ED_OPER ;
 scalar_t__ HC_IS_RUNNING (int ) ;
 int finish_urb (struct ohci_hcd*,struct urb*,int) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_ed_unlink (struct ohci_hcd*,TYPE_2__*) ;
 int urb_print (struct urb*,char*,int,int) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int ohci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 unsigned long flags;
 int rc;





 spin_lock_irqsave (&ohci->lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc) {
  ;
 } else if (HC_IS_RUNNING(hcd->state)) {
  urb_priv_t *urb_priv;





  urb_priv = urb->hcpriv;
  if (urb_priv) {
   if (urb_priv->ed->state == ED_OPER)
    start_ed_unlink (ohci, urb_priv->ed);
  }
 } else {




  if (urb->hcpriv)
   finish_urb(ohci, urb, status);
 }
 spin_unlock_irqrestore (&ohci->lock, flags);
 return rc;
}
