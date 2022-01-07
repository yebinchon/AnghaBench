
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdm_device {int plock; TYPE_1__* intf; } ;
struct usb_interface {int minor; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int recover_from_urb_loss (struct wdm_device*) ;
 struct wdm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int wdm_resume(struct usb_interface *intf)
{
 struct wdm_device *desc = usb_get_intfdata(intf);
 int rv;

 dev_dbg(&desc->intf->dev, "wdm%d_resume\n", intf->minor);
 mutex_lock(&desc->plock);
 rv = recover_from_urb_loss(desc);
 mutex_unlock(&desc->plock);
 return rv;
}
