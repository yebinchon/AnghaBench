
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int lock; } ;
struct vhci_device {TYPE_1__ ud; } ;
typedef int __u32 ;
struct TYPE_4__ {int lock; } ;


 int EINVAL ;
 int VDEV_EVENT_DOWN ;
 scalar_t__ VDEV_ST_NULL ;
 struct vhci_device* port_to_vdev (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_2__* the_controller ;
 int usbip_dbg_vhci_sysfs (char*) ;
 int usbip_event_add (TYPE_1__*,int ) ;
 int usbip_uerr (char*,scalar_t__) ;

__attribute__((used)) static int vhci_port_disconnect(__u32 rhport)
{
 struct vhci_device *vdev;

 usbip_dbg_vhci_sysfs("enter\n");


 spin_lock(&the_controller->lock);

 vdev = port_to_vdev(rhport);

 spin_lock(&vdev->ud.lock);
 if (vdev->ud.status == VDEV_ST_NULL) {
  usbip_uerr("not connected %d\n", vdev->ud.status);


  spin_unlock(&vdev->ud.lock);
  spin_unlock(&the_controller->lock);

  return -EINVAL;
 }


 spin_unlock(&vdev->ud.lock);
 spin_unlock(&the_controller->lock);

 usbip_event_add(&vdev->ud, VDEV_EVENT_DOWN);

 return 0;
}
