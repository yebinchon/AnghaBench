
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_hcd {struct vhci_device* vdev; } ;
struct vhci_device {int ud; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int VDEV_EVENT_REMOVED ;
 int VHCI_NPORTS ;
 int dev_attr_group ;
 struct vhci_hcd* hcd_to_vhci (struct usb_hcd*) ;
 int sysfs_remove_group (int *,int *) ;
 int usbip_dbg_vhci_hc (char*) ;
 int usbip_event_add (int *,int ) ;
 int usbip_stop_eh (int *) ;
 int usbip_uinfo (char*) ;
 TYPE_1__* vhci_dev (struct vhci_hcd*) ;

__attribute__((used)) static void vhci_stop(struct usb_hcd *hcd)
{
 struct vhci_hcd *vhci = hcd_to_vhci(hcd);
 int rhport = 0;

 usbip_dbg_vhci_hc("stop VHCI controller\n");



 sysfs_remove_group(&vhci_dev(vhci)->kobj, &dev_attr_group);


 for (rhport = 0 ; rhport < VHCI_NPORTS; rhport++) {
  struct vhci_device *vdev = &vhci->vdev[rhport];

  usbip_event_add(&vdev->ud, VDEV_EVENT_REMOVED);
  usbip_stop_eh(&vdev->ud);
 }


 usbip_uinfo("vhci_stop done\n");
}
