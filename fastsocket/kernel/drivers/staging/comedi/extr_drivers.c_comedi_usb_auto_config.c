
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int BUG_ON (int ) ;
 int comedi_auto_config (int *,char const*,int *,int ) ;

int comedi_usb_auto_config(struct usb_device *usbdev, const char *board_name)
{
 BUG_ON(usbdev == ((void*)0));
 return comedi_auto_config(&usbdev->dev, board_name, ((void*)0), 0);
}
