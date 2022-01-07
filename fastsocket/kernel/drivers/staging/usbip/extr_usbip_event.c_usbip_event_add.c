
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {unsigned long event; int lock; int eh_waitq; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void usbip_event_add(struct usbip_device *ud, unsigned long event)
{
 spin_lock(&ud->lock);

 ud->event |= event;

 wake_up(&ud->eh_waitq);

 spin_unlock(&ud->lock);
}
