
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int BUG_ON (int ) ;
 int comedi_auto_unconfig (int *) ;

void comedi_usb_auto_unconfig(struct usb_device *usbdev)
{
 BUG_ON(usbdev == ((void*)0));
 comedi_auto_unconfig(&usbdev->dev);
}
