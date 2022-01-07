
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int usb_device_type ;

__attribute__((used)) static inline int is_usb_device(const struct device *dev)
{
 return dev->type == &usb_device_type;
}
