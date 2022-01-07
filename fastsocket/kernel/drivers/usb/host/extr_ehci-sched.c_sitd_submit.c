
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ interval; int transfer_buffer_length; int pipe; TYPE_1__* dev; } ;
struct ehci_iso_stream {scalar_t__ interval; } ;
struct ehci_hcd {int periodic_size; int lock; } ;
typedef int gfp_t ;
struct TYPE_2__ {int devpath; } ;


 int EINVAL ;
 int ENOMEM ;
 int ESHUTDOWN ;
 int HCD_HW_ACCESSIBLE (int ) ;
 int ehci_dbg (struct ehci_hcd*,char*,...) ;
 int ehci_to_hcd (struct ehci_hcd*) ;
 struct ehci_iso_stream* iso_stream_find (struct ehci_hcd*,struct urb*) ;
 int iso_stream_put (struct ehci_hcd*,struct ehci_iso_stream*) ;
 int iso_stream_schedule (struct ehci_hcd*,struct urb*,struct ehci_iso_stream*) ;
 int sitd_link_urb (struct ehci_hcd*,struct urb*,int,struct ehci_iso_stream*) ;
 int sitd_urb_transaction (struct ehci_iso_stream*,struct ehci_hcd*,struct urb*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_hcd_link_urb_to_ep (int ,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (int ,struct urb*) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static int sitd_submit (struct ehci_hcd *ehci, struct urb *urb,
 gfp_t mem_flags)
{
 int status = -EINVAL;
 unsigned long flags;
 struct ehci_iso_stream *stream;


 stream = iso_stream_find (ehci, urb);
 if (stream == ((void*)0)) {
  ehci_dbg (ehci, "can't get iso stream\n");
  return -ENOMEM;
 }
 if (urb->interval != stream->interval) {
  ehci_dbg (ehci, "can't change iso interval %d --> %d\n",
   stream->interval, urb->interval);
  goto done;
 }
 status = sitd_urb_transaction (stream, ehci, urb, mem_flags);
 if (status < 0) {
  ehci_dbg (ehci, "can't init sitds\n");
  goto done;
 }


 spin_lock_irqsave (&ehci->lock, flags);
 if (unlikely(!HCD_HW_ACCESSIBLE(ehci_to_hcd(ehci)))) {
  status = -ESHUTDOWN;
  goto done_not_linked;
 }
 status = usb_hcd_link_urb_to_ep(ehci_to_hcd(ehci), urb);
 if (unlikely(status))
  goto done_not_linked;
 status = iso_stream_schedule(ehci, urb, stream);
 if (status == 0)
  sitd_link_urb (ehci, urb, ehci->periodic_size << 3, stream);
 else
  usb_hcd_unlink_urb_from_ep(ehci_to_hcd(ehci), urb);
done_not_linked:
 spin_unlock_irqrestore (&ehci->lock, flags);

done:
 if (status < 0)
  iso_stream_put (ehci, stream);
 return status;
}
