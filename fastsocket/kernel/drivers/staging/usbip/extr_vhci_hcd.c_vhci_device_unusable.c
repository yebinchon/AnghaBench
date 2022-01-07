
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {int lock; int status; } ;


 int VDEV_ST_ERROR ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void vhci_device_unusable(struct usbip_device *ud)
{
 spin_lock(&ud->lock);

 ud->status = VDEV_ST_ERROR;

 spin_unlock(&ud->lock);
}
