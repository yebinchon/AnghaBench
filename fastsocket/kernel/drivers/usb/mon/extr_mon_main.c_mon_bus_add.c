
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int monitored; } ;
struct TYPE_2__ {scalar_t__ nreaders; } ;


 TYPE_1__ mon_bus0 ;
 int mon_bus_init (struct usb_bus*) ;
 int mon_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mon_bus_add(struct usb_bus *ubus)
{
 mon_bus_init(ubus);
 mutex_lock(&mon_lock);
 if (mon_bus0.nreaders != 0)
  ubus->monitored = 1;
 mutex_unlock(&mon_lock);
}
