
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ devid; } ;
struct usbip_header {TYPE_1__ base; } ;
struct usbip_device {scalar_t__ status; int lock; } ;
struct stub_device {scalar_t__ devid; struct usbip_device ud; } ;


 scalar_t__ SDEV_ST_USED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int valid_request(struct stub_device *sdev, struct usbip_header *pdu)
{
 struct usbip_device *ud = &sdev->ud;

 if (pdu->base.devid == sdev->devid) {
  spin_lock(&ud->lock);
  if (ud->status == SDEV_ST_USED) {

   spin_unlock(&ud->lock);
   return 1;
  }
  spin_unlock(&ud->lock);
 }

 return 0;
}
