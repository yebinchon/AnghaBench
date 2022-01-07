
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_tranzport {struct usb_tranzport* interrupt_out_buffer; struct usb_tranzport* interrupt_in_buffer; struct usb_tranzport* ring_buffer; int interrupt_out_urb; int interrupt_in_urb; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_compress_wheel ;
 int dev_attr_enable ;
 int dev_attr_offline ;
 int device_remove_file (int *,int *) ;
 int kfree (struct usb_tranzport*) ;
 int usb_free_urb (int ) ;
 int usb_tranzport_abort_transfers (struct usb_tranzport*) ;

__attribute__((used)) static void usb_tranzport_delete(struct usb_tranzport *dev)
{
 usb_tranzport_abort_transfers(dev);
 if (dev->intf != ((void*)0)) {
  device_remove_file(&dev->intf->dev, &dev_attr_enable);
  device_remove_file(&dev->intf->dev, &dev_attr_offline);
  device_remove_file(&dev->intf->dev, &dev_attr_compress_wheel);
 }


 usb_free_urb(dev->interrupt_in_urb);
 usb_free_urb(dev->interrupt_out_urb);
 kfree(dev->ring_buffer);
 kfree(dev->interrupt_in_buffer);
 kfree(dev->interrupt_out_buffer);
 kfree(dev);
}
