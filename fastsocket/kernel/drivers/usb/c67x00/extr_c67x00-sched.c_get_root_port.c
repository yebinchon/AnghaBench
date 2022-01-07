
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int portnum; struct usb_device* parent; } ;



__attribute__((used)) static inline int get_root_port(struct usb_device *dev)
{
 while (dev->parent->parent)
  dev = dev->parent;
 return dev->portnum;
}
