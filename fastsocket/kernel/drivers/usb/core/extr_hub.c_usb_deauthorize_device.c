
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bNumConfigurations; } ;
struct usb_device {scalar_t__ authorized; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; } ;


 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kstrdup (char*,int ) ;
 int usb_destroy_configuration (struct usb_device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int) ;
 int usb_unlock_device (struct usb_device*) ;

int usb_deauthorize_device(struct usb_device *usb_dev)
{
 usb_lock_device(usb_dev);
 if (usb_dev->authorized == 0)
  goto out_unauthorized;

 usb_dev->authorized = 0;
 usb_set_configuration(usb_dev, -1);

 kfree(usb_dev->product);
 usb_dev->product = kstrdup("n/a (unauthorized)", GFP_KERNEL);
 kfree(usb_dev->manufacturer);
 usb_dev->manufacturer = kstrdup("n/a (unauthorized)", GFP_KERNEL);
 kfree(usb_dev->serial);
 usb_dev->serial = kstrdup("n/a (unauthorized)", GFP_KERNEL);

 usb_destroy_configuration(usb_dev);
 usb_dev->descriptor.bNumConfigurations = 0;

out_unauthorized:
 usb_unlock_device(usb_dev);
 return 0;
}
