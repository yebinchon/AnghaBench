
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct ftdi_sio_quirk {int (* probe ) (struct usb_serial*) ;} ;


 int stub1 (struct usb_serial*) ;
 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static int ftdi_sio_probe(struct usb_serial *serial,
     const struct usb_device_id *id)
{
 struct ftdi_sio_quirk *quirk =
    (struct ftdi_sio_quirk *)id->driver_info;

 if (quirk && quirk->probe) {
  int ret = quirk->probe(serial);
  if (ret != 0)
   return ret;
 }

 usb_set_serial_data(serial, (void *)id->driver_info);

 return 0;
}
