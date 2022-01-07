
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct usb_device* root_hub; int controller; } ;
struct usb_hcd {scalar_t__ irq; TYPE_3__ self; int rh_timer; int flags; int state; TYPE_2__* driver; int wakeup_work; scalar_t__ rh_registered; } ;
struct TYPE_4__ {int kobj; } ;
struct usb_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int (* stop ) (struct usb_hcd*) ;} ;


 int HCD_FLAG_POLL_RH ;
 int HCD_FLAG_RH_POLLABLE ;
 int HCD_FLAG_RH_RUNNING ;
 scalar_t__ HC_IS_RUNNING (int ) ;
 int HC_STATE_HALT ;
 int HC_STATE_QUIESCING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int free_irq (scalar_t__,struct usb_hcd*) ;
 int hcd_buffer_destroy (struct usb_hcd*) ;
 int hcd_root_hub_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct usb_hcd*) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_bus_attr_group ;
 int usb_bus_list_lock ;
 int usb_deregister_bus (TYPE_3__*) ;
 int usb_disconnect (struct usb_device**) ;
 int usb_get_dev (struct usb_device*) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int usb_put_dev (struct usb_device*) ;

void usb_remove_hcd(struct usb_hcd *hcd)
{
 struct usb_device *rhdev = hcd->self.root_hub;

 dev_info(hcd->self.controller, "remove, state %x\n", hcd->state);

 usb_get_dev(rhdev);
 sysfs_remove_group(&rhdev->dev.kobj, &usb_bus_attr_group);

 clear_bit(HCD_FLAG_RH_RUNNING, &hcd->flags);
 if (HC_IS_RUNNING (hcd->state))
  hcd->state = HC_STATE_QUIESCING;

 dev_dbg(hcd->self.controller, "roothub graceful disconnect\n");
 spin_lock_irq (&hcd_root_hub_lock);
 hcd->rh_registered = 0;
 spin_unlock_irq (&hcd_root_hub_lock);




 mutex_lock(&usb_bus_list_lock);
 usb_disconnect(&rhdev);
 mutex_unlock(&usb_bus_list_lock);






 clear_bit(HCD_FLAG_RH_POLLABLE, &hcd->flags);
 clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 del_timer_sync(&hcd->rh_timer);

 hcd->driver->stop(hcd);
 hcd->state = HC_STATE_HALT;


 clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 del_timer_sync(&hcd->rh_timer);

 if (usb_hcd_is_primary_hcd(hcd)) {
  if (hcd->irq >= 0)
   free_irq(hcd->irq, hcd);
 }

 usb_put_dev(hcd->self.root_hub);
 usb_deregister_bus(&hcd->self);
 hcd_buffer_destroy(hcd);
}
