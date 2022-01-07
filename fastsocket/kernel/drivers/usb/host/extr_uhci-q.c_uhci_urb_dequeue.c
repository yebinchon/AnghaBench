
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb_priv {struct uhci_qh* qh; } ;
struct urb {int start_frame; scalar_t__ hcpriv; } ;
struct uhci_qh {scalar_t__ type; int unlink_frame; } ;
struct uhci_hcd {int lock; int frame_number; } ;


 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 int mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uhci_frame_before_eq (int ,int ) ;
 int uhci_get_current_frame_number (struct uhci_hcd*) ;
 int uhci_unlink_isochronous_tds (struct uhci_hcd*,struct urb*) ;
 int uhci_unlink_qh (struct uhci_hcd*,struct uhci_qh*) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int uhci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);
 unsigned long flags;
 struct uhci_qh *qh;
 int rc;

 spin_lock_irqsave(&uhci->lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto done;

 qh = ((struct urb_priv *) urb->hcpriv)->qh;


 if (qh->type == USB_ENDPOINT_XFER_ISOC) {
  uhci_unlink_isochronous_tds(uhci, urb);
  mb();


  uhci_get_current_frame_number(uhci);
  if (uhci_frame_before_eq(urb->start_frame, uhci->frame_number))
   qh->unlink_frame = uhci->frame_number;
 }

 uhci_unlink_qh(uhci, qh);

done:
 spin_unlock_irqrestore(&uhci->lock, flags);
 return rc;
}
