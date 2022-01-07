
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbdevfs_hub_portinfo {int nports; int * port; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int maxchild; TYPE_1__** children; int devnum; } ;
struct TYPE_2__ {int devnum; } ;


 int ENOSYS ;

 int device_state_lock ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
hub_ioctl(struct usb_interface *intf, unsigned int code, void *user_data)
{
 struct usb_device *hdev = interface_to_usbdev (intf);


 switch (code) {
 case 128: {
  struct usbdevfs_hub_portinfo *info = user_data;
  int i;

  spin_lock_irq(&device_state_lock);
  if (hdev->devnum <= 0)
   info->nports = 0;
  else {
   info->nports = hdev->maxchild;
   for (i = 0; i < info->nports; i++) {
    if (hdev->children[i] == ((void*)0))
     info->port[i] = 0;
    else
     info->port[i] =
      hdev->children[i]->devnum;
   }
  }
  spin_unlock_irq(&device_state_lock);

  return info->nports + 1;
  }

 default:
  return -ENOSYS;
 }
}
