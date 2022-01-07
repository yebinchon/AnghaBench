
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vhci_device {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vdev; } ;
struct TYPE_3__ {struct usb_device* udev; } ;


 int VHCI_NPORTS ;
 struct vhci_device* port_to_vdev (int) ;
 TYPE_2__* the_controller ;

__attribute__((used)) static struct vhci_device *get_vdev(struct usb_device *udev)
{
 int i;

 if (!udev)
  return ((void*)0);

 for (i = 0; i < VHCI_NPORTS; i++)
  if (the_controller->vdev[i].udev == udev)
   return port_to_vdev(i);

 return ((void*)0);
}
