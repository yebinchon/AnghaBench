
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {struct mon_bus* mon_bus; } ;
struct mon_bus {int ref; scalar_t__ bin_inited; scalar_t__ text_inited; int bus_link; } ;


 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mon_bin_del (struct mon_bus*) ;
 int mon_bus_drop ;
 int mon_dissolve (struct mon_bus*,struct usb_bus*) ;
 int mon_lock ;
 int mon_text_del (struct mon_bus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mon_bus_remove(struct usb_bus *ubus)
{
 struct mon_bus *mbus = ubus->mon_bus;

 mutex_lock(&mon_lock);
 list_del(&mbus->bus_link);
 if (mbus->text_inited)
  mon_text_del(mbus);
 if (mbus->bin_inited)
  mon_bin_del(mbus);

 mon_dissolve(mbus, ubus);
 kref_put(&mbus->ref, mon_bus_drop);
 mutex_unlock(&mon_lock);
}
