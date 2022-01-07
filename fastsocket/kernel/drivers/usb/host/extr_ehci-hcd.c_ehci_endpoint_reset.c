
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct ehci_qh* hcpriv; int desc; } ;
struct usb_hcd {int dummy; } ;
struct ehci_qh {scalar_t__ qh_state; int qtd_list; int dev; } ;
struct ehci_hcd {int lock; } ;


 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_LINKED ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_INT ;
 int WARN_ONCE (int,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int intr_deschedule (struct ehci_hcd*,struct ehci_qh*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_type (int *) ;
 int usb_settoggle (int ,int,int,int ) ;

__attribute__((used)) static void
ehci_endpoint_reset(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 struct ehci_qh *qh;
 int eptype = usb_endpoint_type(&ep->desc);
 int epnum = usb_endpoint_num(&ep->desc);
 int is_out = usb_endpoint_dir_out(&ep->desc);
 unsigned long flags;

 if (eptype != USB_ENDPOINT_XFER_BULK && eptype != USB_ENDPOINT_XFER_INT)
  return;

 spin_lock_irqsave(&ehci->lock, flags);
 qh = ep->hcpriv;






 if (qh) {
  usb_settoggle(qh->dev, epnum, is_out, 0);
  if (!list_empty(&qh->qtd_list)) {
   WARN_ONCE(1, "clear_halt for a busy endpoint\n");
  } else if (qh->qh_state == QH_STATE_LINKED ||
    qh->qh_state == QH_STATE_COMPLETING) {





   if (eptype == USB_ENDPOINT_XFER_BULK)
    unlink_async(ehci, qh);
   else
    intr_deschedule(ehci, qh);
  }
 }
 spin_unlock_irqrestore(&ehci->lock, flags);
}
