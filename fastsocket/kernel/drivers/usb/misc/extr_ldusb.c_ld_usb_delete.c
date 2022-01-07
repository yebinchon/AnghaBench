
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_usb {struct ld_usb* interrupt_out_buffer; struct ld_usb* interrupt_in_buffer; struct ld_usb* ring_buffer; int interrupt_out_urb; int interrupt_in_urb; } ;


 int kfree (struct ld_usb*) ;
 int ld_usb_abort_transfers (struct ld_usb*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ld_usb_delete(struct ld_usb *dev)
{
 ld_usb_abort_transfers(dev);


 usb_free_urb(dev->interrupt_in_urb);
 usb_free_urb(dev->interrupt_out_urb);
 kfree(dev->ring_buffer);
 kfree(dev->interrupt_in_buffer);
 kfree(dev->interrupt_out_buffer);
 kfree(dev);
}
