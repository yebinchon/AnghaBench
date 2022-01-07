
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 int NOTIFY_OK ;


 int usb_classdev_add (void*) ;
 int usb_classdev_remove (void*) ;
 int usbdev_remove (void*) ;

__attribute__((used)) static int usbdev_notify(struct notifier_block *self,
          unsigned long action, void *dev)
{
 switch (action) {
 case 129:
  if (usb_classdev_add(dev))
   return NOTIFY_BAD;
  break;
 case 128:
  usb_classdev_remove(dev);
  usbdev_remove(dev);
  break;
 }
 return NOTIFY_OK;
}
