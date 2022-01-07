
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wdm_device {int plock; int rxwork; int flags; TYPE_1__* intf; } ;
struct usb_interface {int minor; } ;
struct TYPE_5__ {int event; } ;
typedef TYPE_2__ pm_message_t ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int PM_EVENT_AUTO ;
 int WDM_IN_USE ;
 int WDM_RESPONDING ;
 int cancel_work_sync (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int kill_urbs (struct wdm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct wdm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int wdm_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct wdm_device *desc = usb_get_intfdata(intf);
 int rv = 0;

 dev_dbg(&desc->intf->dev, "wdm%d_suspend\n", intf->minor);

 mutex_lock(&desc->plock);







  cancel_work_sync(&desc->rxwork);
  kill_urbs(desc);



 mutex_unlock(&desc->plock);

 return rv;
}
