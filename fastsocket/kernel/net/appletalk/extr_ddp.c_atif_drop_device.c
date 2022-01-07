
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * atalk_ptr; } ;
struct atalk_iface {struct atalk_iface* next; struct net_device* dev; } ;


 struct atalk_iface* atalk_interfaces ;
 int atalk_interfaces_lock ;
 int dev_put (struct net_device*) ;
 int kfree (struct atalk_iface*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void atif_drop_device(struct net_device *dev)
{
 struct atalk_iface **iface = &atalk_interfaces;
 struct atalk_iface *tmp;

 write_lock_bh(&atalk_interfaces_lock);
 while ((tmp = *iface) != ((void*)0)) {
  if (tmp->dev == dev) {
   *iface = tmp->next;
   dev_put(dev);
   kfree(tmp);
   dev->atalk_ptr = ((void*)0);
  } else
   iface = &tmp->next;
 }
 write_unlock_bh(&atalk_interfaces_lock);
}
