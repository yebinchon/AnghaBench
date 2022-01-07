
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_flags; int idProduct; int idVendor; } ;


 int USB_DEVICE_ID_MATCH_PRODUCT ;
 int USB_DEVICE_ID_MATCH_VENDOR ;
 int debug ;
 TYPE_1__* generic_device_ids ;
 int generic_driver ;
 int product ;
 int usb_register (int *) ;
 int usb_serial_deregister (int *) ;
 int usb_serial_generic_device ;
 int usb_serial_register (int *) ;
 int vendor ;

int usb_serial_generic_register(int _debug)
{
 int retval = 0;

 debug = _debug;
 return retval;
}
