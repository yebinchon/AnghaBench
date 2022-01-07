
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* digipeat; struct TYPE_4__* next; struct net_device* dev; } ;
typedef TYPE_1__ ax25_route ;


 TYPE_1__* ax25_route_list ;
 int ax25_route_lock ;
 int kfree (TYPE_1__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ax25_rt_device_down(struct net_device *dev)
{
 ax25_route *s, *t, *ax25_rt;

 write_lock_bh(&ax25_route_lock);
 ax25_rt = ax25_route_list;
 while (ax25_rt != ((void*)0)) {
  s = ax25_rt;
  ax25_rt = ax25_rt->next;

  if (s->dev == dev) {
   if (ax25_route_list == s) {
    ax25_route_list = s->next;
    kfree(s->digipeat);
    kfree(s);
   } else {
    for (t = ax25_route_list; t != ((void*)0); t = t->next) {
     if (t->next == s) {
      t->next = s->next;
      kfree(s->digipeat);
      kfree(s);
      break;
     }
    }
   }
  }
 }
 write_unlock_bh(&ax25_route_lock);
}
