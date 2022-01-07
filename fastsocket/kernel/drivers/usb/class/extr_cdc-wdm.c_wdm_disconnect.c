
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int count; int wait; int rxwork; int iuspin; int flags; } ;
struct usb_interface {int dummy; } ;


 int WDM_DISCONNECTING ;
 int WDM_IN_USE ;
 int WDM_READ ;
 int cancel_work_sync (int *) ;
 int cleanup (struct wdm_device*) ;
 int clear_bit (int ,int *) ;
 int kill_urbs (struct wdm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct wdm_device* usb_get_intfdata (struct usb_interface*) ;
 int wake_up_all (int *) ;
 int wdm_class ;
 int wdm_mutex ;

__attribute__((used)) static void wdm_disconnect(struct usb_interface *intf)
{
 struct wdm_device *desc;
 unsigned long flags;

 usb_deregister_dev(intf, &wdm_class);
 mutex_lock(&wdm_mutex);
 desc = usb_get_intfdata(intf);


 spin_lock_irqsave(&desc->iuspin, flags);
 set_bit(WDM_DISCONNECTING, &desc->flags);
 set_bit(WDM_READ, &desc->flags);

 clear_bit(WDM_IN_USE, &desc->flags);
 spin_unlock_irqrestore(&desc->iuspin, flags);
 cancel_work_sync(&desc->rxwork);
 kill_urbs(desc);
 wake_up_all(&desc->wait);
 if (!desc->count)
  cleanup(desc);
 mutex_unlock(&wdm_mutex);
}
