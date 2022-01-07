
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int self; } ;
struct urb {int unlinked; int transfer_flags; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int status; int reject; int use_count; int (* complete ) (struct urb*) ;int * hcpriv; } ;


 int EREMOTEIO ;
 int URB_SHORT_NOT_OK ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int stub1 (struct urb*) ;
 scalar_t__ unlikely (int) ;
 int unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;
 int usb_kill_urb_queue ;
 int usb_put_urb (struct urb*) ;
 int usb_unanchor_urb (struct urb*) ;
 int usbmon_urb_complete (int *,struct urb*,int) ;
 int wake_up (int *) ;

void usb_hcd_giveback_urb(struct usb_hcd *hcd, struct urb *urb, int status)
{
 urb->hcpriv = ((void*)0);
 if (unlikely(urb->unlinked))
  status = urb->unlinked;
 else if (unlikely((urb->transfer_flags & URB_SHORT_NOT_OK) &&
   urb->actual_length < urb->transfer_buffer_length &&
   !status))
  status = -EREMOTEIO;

 unmap_urb_for_dma(hcd, urb);
 usbmon_urb_complete(&hcd->self, urb, status);
 usb_unanchor_urb(urb);


 urb->status = status;
 urb->complete (urb);
 atomic_dec (&urb->use_count);
 if (unlikely(atomic_read(&urb->reject)))
  wake_up (&usb_kill_urb_queue);
 usb_put_urb (urb);
}
