
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {scalar_t__ event; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int usbip_event_happened(struct usbip_device *ud)
{
 int happened = 0;

 spin_lock(&ud->lock);

 if (ud->event != 0)
  happened = 1;

 spin_unlock(&ud->lock);

 return happened;
}
