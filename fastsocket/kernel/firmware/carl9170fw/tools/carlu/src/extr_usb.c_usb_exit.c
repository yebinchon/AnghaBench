
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libusb_exit (int ) ;
 int usb_ctx ;

void usb_exit(void)
{
 libusb_exit(usb_ctx);
}
