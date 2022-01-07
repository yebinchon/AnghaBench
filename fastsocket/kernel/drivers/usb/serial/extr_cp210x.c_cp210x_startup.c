
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int usb_reset_device (int ) ;

__attribute__((used)) static int cp210x_startup(struct usb_serial *serial)
{

 usb_reset_device(serial->dev);
 return 0;
}
