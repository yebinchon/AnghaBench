
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_iso_packet_descriptor {scalar_t__ actual_length; scalar_t__ length; int status; } ;
struct usb_device {int devpath; } ;
struct urb {int number_of_packets; struct usb_device* dev; int actual_length; int pipe; int error_count; struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct ehci_sitd {int index; scalar_t__ frame; int sitd_list; struct ehci_iso_stream* stream; struct urb* urb; int hw_results; } ;
struct ehci_iso_stream {int depth; int interval; int bEndpointAddress; int refcount; TYPE_2__* ep; int free_list; scalar_t__ bandwidth; int td_list; } ;
struct ehci_hcd {int amd_pll_fix; scalar_t__ clock_frame; int cached_sitd_list; } ;
struct TYPE_4__ {scalar_t__ bandwidth_isoc_reqs; int bandwidth_allocated; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {int * hcpriv; } ;


 int ECOMM ;
 int ENOSR ;
 int EOVERFLOW ;
 int EPROTO ;
 int SITD_ERRS ;
 scalar_t__ SITD_LENGTH (int) ;
 int SITD_STS_BABBLE ;
 int SITD_STS_DBE ;
 int USB_DIR_IN ;
 int disable_periodic (struct ehci_hcd*) ;
 TYPE_3__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_urb_done (struct ehci_hcd*,struct urb*,int ) ;
 int ehci_vdbg (struct ehci_hcd*,char*,int ,int,char*) ;
 int hc32_to_cpup (struct ehci_hcd*,int *) ;
 int iso_stream_put (struct ehci_hcd*,struct ehci_iso_stream*) ;
 scalar_t__ list_is_singular (int *) ;
 int list_move (int *,int *) ;
 int usb_amd_quirk_pll_enable () ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static unsigned
sitd_complete (
 struct ehci_hcd *ehci,
 struct ehci_sitd *sitd
) {
 struct urb *urb = sitd->urb;
 struct usb_iso_packet_descriptor *desc;
 u32 t;
 int urb_index = -1;
 struct ehci_iso_stream *stream = sitd->stream;
 struct usb_device *dev;
 unsigned retval = 0;

 urb_index = sitd->index;
 desc = &urb->iso_frame_desc [urb_index];
 t = hc32_to_cpup(ehci, &sitd->hw_results);


 if (t & SITD_ERRS) {
  urb->error_count++;
  if (t & SITD_STS_DBE)
   desc->status = usb_pipein (urb->pipe)
    ? -ENOSR
    : -ECOMM;
  else if (t & SITD_STS_BABBLE)
   desc->status = -EOVERFLOW;
  else
   desc->status = -EPROTO;
 } else {
  desc->status = 0;
  desc->actual_length = desc->length - SITD_LENGTH(t);
  urb->actual_length += desc->actual_length;
 }
 stream->depth -= stream->interval << 3;


 if ((urb_index + 1) != urb->number_of_packets)
  goto done;







 dev = urb->dev;
 ehci_urb_done(ehci, urb, 0);
 retval = 1;
 urb = ((void*)0);
 (void) disable_periodic(ehci);
 ehci_to_hcd(ehci)->self.bandwidth_isoc_reqs--;

 if (ehci_to_hcd(ehci)->self.bandwidth_isoc_reqs == 0) {
  if (ehci->amd_pll_fix == 1)
   usb_amd_quirk_pll_enable();
 }

 if (list_is_singular(&stream->td_list)) {
  ehci_to_hcd(ehci)->self.bandwidth_allocated
    -= stream->bandwidth;
  ehci_vdbg (ehci,
   "deschedule devp %s ep%d%s-iso\n",
   dev->devpath, stream->bEndpointAddress & 0x0f,
   (stream->bEndpointAddress & USB_DIR_IN) ? "in" : "out");
 }
 iso_stream_put (ehci, stream);

done:
 sitd->urb = ((void*)0);
 if (ehci->clock_frame != sitd->frame) {

  sitd->stream = ((void*)0);
  list_move(&sitd->sitd_list, &stream->free_list);
  iso_stream_put(ehci, stream);
 } else {



  list_move(&sitd->sitd_list, &ehci->cached_sitd_list);
  if (stream->refcount == 2) {



   stream->ep->hcpriv = ((void*)0);
   stream->ep = ((void*)0);
  }
 }
 return retval;
}
