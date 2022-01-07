
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device {int dummy; } ;
struct carlu {int dev; } ;
typedef struct libusb_device libusb_device ;


 scalar_t__ libusb_get_bus_number (struct libusb_device*) ;
 struct libusb_device* libusb_get_device (int ) ;
 scalar_t__ libusb_get_device_address (struct libusb_device*) ;

__attribute__((used)) static bool carlusb_is_dev(struct carlu *iter,
          struct libusb_device *dev)
{
 libusb_device *list_dev;

 if (!iter->dev)
  return 0;

 list_dev = libusb_get_device(iter->dev);

 if (libusb_get_bus_number(list_dev) == libusb_get_bus_number(dev) &&
     libusb_get_device_address(list_dev) == libusb_get_device_address(dev))
  return 1;

 return 0;
}
