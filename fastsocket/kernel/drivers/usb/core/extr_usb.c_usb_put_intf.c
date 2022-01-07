
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;


 int put_device (int *) ;

void usb_put_intf(struct usb_interface *intf)
{
 if (intf)
  put_device(&intf->dev);
}
