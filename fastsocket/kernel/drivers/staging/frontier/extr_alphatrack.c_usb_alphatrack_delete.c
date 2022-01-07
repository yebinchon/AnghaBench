
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_alphatrack {struct usb_alphatrack* interrupt_out_buffer; struct usb_alphatrack* interrupt_in_buffer; struct usb_alphatrack* ring_buffer; int interrupt_out_urb; int interrupt_in_urb; } ;


 int kfree (struct usb_alphatrack*) ;
 int usb_alphatrack_abort_transfers (struct usb_alphatrack*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void usb_alphatrack_delete(struct usb_alphatrack *dev)
{
 usb_alphatrack_abort_transfers(dev);
 usb_free_urb(dev->interrupt_in_urb);
 usb_free_urb(dev->interrupt_out_urb);
 kfree(dev->ring_buffer);
 kfree(dev->interrupt_in_buffer);
 kfree(dev->interrupt_out_buffer);
 kfree(dev);
}
