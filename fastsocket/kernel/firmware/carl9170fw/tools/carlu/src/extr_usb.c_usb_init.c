
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (char*,int) ;
 int libusb_init (int *) ;
 int libusb_set_debug (int ,int) ;
 int usb_ctx ;

int usb_init(void)
{
 int ret;

 ret = libusb_init(&usb_ctx);
 if (ret != 0) {
  err("failed to initialize usb subsystem (%d)\n", ret);
  return ret;
 }


 libusb_set_debug(usb_ctx, 2);

 return 0;
}
