
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct atalk_route {struct atalk_route* next; struct net_device* dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 struct atalk_route* atalk_routes ;
 int atalk_routes_lock ;
 TYPE_1__ atrtr_default ;
 int atrtr_set_default (int *) ;
 int dev_put (struct net_device*) ;
 int kfree (struct atalk_route*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void atrtr_device_down(struct net_device *dev)
{
 struct atalk_route **r = &atalk_routes;
 struct atalk_route *tmp;

 write_lock_bh(&atalk_routes_lock);
 while ((tmp = *r) != ((void*)0)) {
  if (tmp->dev == dev) {
   *r = tmp->next;
   dev_put(dev);
   kfree(tmp);
  } else
   r = &tmp->next;
 }
 write_unlock_bh(&atalk_routes_lock);

 if (atrtr_default.dev == dev)
  atrtr_set_default(((void*)0));
}
