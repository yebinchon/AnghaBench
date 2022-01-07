
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ speed; } ;
struct urb {int interval; int transfer_buffer; int transfer_dma; int transfer_flags; } ;


 int GFP_KERNEL ;
 int INTERRUPT_RATE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int URB_SHORT_NOT_OK ;
 scalar_t__ USB_SPEED_HIGH ;
 int memset (int ,int ,unsigned long) ;
 int simple_callback ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_buffer_alloc (struct usb_device*,unsigned long,int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int,int *,unsigned long,int ,int *) ;
 int usb_free_urb (struct urb*) ;
 scalar_t__ usb_pipein (int) ;

__attribute__((used)) static struct urb *simple_alloc_urb (
 struct usb_device *udev,
 int pipe,
 unsigned long bytes
)
{
 struct urb *urb;

 urb = usb_alloc_urb (0, GFP_KERNEL);
 if (!urb)
  return urb;
 usb_fill_bulk_urb (urb, udev, pipe, ((void*)0), bytes, simple_callback, ((void*)0));
 urb->interval = (udev->speed == USB_SPEED_HIGH)
   ? (INTERRUPT_RATE << 3)
   : INTERRUPT_RATE;
 urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
 if (usb_pipein (pipe))
  urb->transfer_flags |= URB_SHORT_NOT_OK;
 urb->transfer_buffer = usb_buffer_alloc (udev, bytes, GFP_KERNEL,
   &urb->transfer_dma);
 if (!urb->transfer_buffer) {
  usb_free_urb (urb);
  urb = ((void*)0);
 } else
  memset (urb->transfer_buffer, 0, bytes);
 return urb;
}
