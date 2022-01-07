
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {int driver; } ;


 int driver_unregister (int *) ;
 int free_dynids (struct usb_serial_driver*) ;

void usb_serial_bus_deregister(struct usb_serial_driver *driver)
{
 free_dynids(driver);
 driver_unregister(&driver->driver);
}
