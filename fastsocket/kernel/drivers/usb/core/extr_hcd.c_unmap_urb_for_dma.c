
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int controller; scalar_t__ uses_dma; } ;
struct usb_hcd {TYPE_3__* driver; TYPE_2__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_flags; int transfer_buffer_length; void* transfer_buffer; int transfer_dma; TYPE_4__* dev; int setup_packet; int setup_dma; TYPE_1__* ep; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int bus; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {int desc; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int HCD_LOCAL_MEM ;
 int URB_NO_SETUP_DMA_MAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dma_unmap_single (int ,int ,int,int) ;
 int hcd_free_coherent (int ,int *,void**,int,int) ;
 scalar_t__ is_root_hub (TYPE_4__*) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;

__attribute__((used)) static void unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
{
 enum dma_data_direction dir;

 if (is_root_hub(urb->dev))
  return;

 if (usb_endpoint_xfer_control(&urb->ep->desc)
     && !(urb->transfer_flags & URB_NO_SETUP_DMA_MAP)) {
  if (hcd->self.uses_dma)
   dma_unmap_single(hcd->self.controller, urb->setup_dma,
     sizeof(struct usb_ctrlrequest),
     DMA_TO_DEVICE);
  else if (hcd->driver->flags & HCD_LOCAL_MEM)
   hcd_free_coherent(urb->dev->bus, &urb->setup_dma,
     (void **)&urb->setup_packet,
     sizeof(struct usb_ctrlrequest),
     DMA_TO_DEVICE);
 }

 dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
 if (urb->transfer_buffer_length != 0
     && !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)) {
  if (hcd->self.uses_dma)
   dma_unmap_single(hcd->self.controller,
     urb->transfer_dma,
     urb->transfer_buffer_length,
     dir);
  else if (hcd->driver->flags & HCD_LOCAL_MEM)
   hcd_free_coherent(urb->dev->bus, &urb->transfer_dma,
     &urb->transfer_buffer,
     urb->transfer_buffer_length,
     dir);
 }
}
