
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int * ax25_ptr; } ;
struct TYPE_6__ {struct TYPE_6__* next; struct net_device* forward; } ;
typedef TYPE_1__ ax25_dev ;


 TYPE_1__* ax25_dev_ax25dev (struct net_device*) ;
 TYPE_1__* ax25_dev_list ;
 int ax25_dev_lock ;
 int ax25_ds_del_timer (TYPE_1__*) ;
 int ax25_register_sysctl () ;
 int ax25_unregister_sysctl () ;
 int dev_put (struct net_device*) ;
 int kfree (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ax25_dev_device_down(struct net_device *dev)
{
 ax25_dev *s, *ax25_dev;

 if ((ax25_dev = ax25_dev_ax25dev(dev)) == ((void*)0))
  return;

 ax25_unregister_sysctl();

 spin_lock_bh(&ax25_dev_lock);
 for (s = ax25_dev_list; s != ((void*)0); s = s->next)
  if (s->forward == dev)
   s->forward = ((void*)0);

 if ((s = ax25_dev_list) == ax25_dev) {
  ax25_dev_list = s->next;
  spin_unlock_bh(&ax25_dev_lock);
  dev_put(dev);
  kfree(ax25_dev);
  ax25_register_sysctl();
  return;
 }

 while (s != ((void*)0) && s->next != ((void*)0)) {
  if (s->next == ax25_dev) {
   s->next = ax25_dev->next;
   spin_unlock_bh(&ax25_dev_lock);
   dev_put(dev);
   kfree(ax25_dev);
   ax25_register_sysctl();
   return;
  }

  s = s->next;
 }
 spin_unlock_bh(&ax25_dev_lock);
 dev->ax25_ptr = ((void*)0);

 ax25_register_sysctl();
}
