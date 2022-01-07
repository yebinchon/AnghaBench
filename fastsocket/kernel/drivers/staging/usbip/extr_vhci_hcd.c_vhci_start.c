
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_hcd {int lock; int seqnum; struct vhci_device* vdev; } ;
struct vhci_device {int rhport; } ;
struct usb_hcd {int uses_new_polling; int state; scalar_t__ power_budget; } ;
struct TYPE_2__ {int kobj; } ;


 int HC_STATE_RUNNING ;
 int VHCI_NPORTS ;
 int atomic_set (int *,int ) ;
 int dev_attr_group ;
 struct vhci_hcd* hcd_to_vhci (struct usb_hcd*) ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int usbip_dbg_vhci_hc (char*) ;
 int usbip_uerr (char*) ;
 TYPE_1__* vhci_dev (struct vhci_hcd*) ;
 int vhci_device_init (struct vhci_device*) ;

__attribute__((used)) static int vhci_start(struct usb_hcd *hcd)
{
 struct vhci_hcd *vhci = hcd_to_vhci(hcd);
 int rhport;
 int err = 0;

 usbip_dbg_vhci_hc("enter vhci_start\n");




 for (rhport = 0; rhport < VHCI_NPORTS; rhport++) {
  struct vhci_device *vdev = &vhci->vdev[rhport];
  vhci_device_init(vdev);
  vdev->rhport = rhport;
 }

 atomic_set(&vhci->seqnum, 0);
 spin_lock_init(&vhci->lock);



 hcd->power_budget = 0;
 hcd->state = HC_STATE_RUNNING;
 hcd->uses_new_polling = 1;



 err = sysfs_create_group(&vhci_dev(vhci)->kobj, &dev_attr_group);
 if (err) {
  usbip_uerr("create sysfs files\n");
  return err;
 }

 return 0;
}
