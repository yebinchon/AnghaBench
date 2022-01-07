
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_X25 ;



 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 struct x25_neigh* x25_get_neigh (struct net_device*) ;
 int x25_kill_by_device (struct net_device*) ;
 int x25_link_device_down (struct net_device*) ;
 int x25_link_device_up (struct net_device*) ;
 int x25_neigh_put (struct x25_neigh*) ;
 int x25_route_device_down (struct net_device*) ;
 int x25_terminate_link (struct x25_neigh*) ;

__attribute__((used)) static int x25_device_event(struct notifier_block *this, unsigned long event,
       void *ptr)
{
 struct net_device *dev = ptr;
 struct x25_neigh *nb;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (dev->type == ARPHRD_X25



  ) {
  switch (event) {
   case 128:
    x25_link_device_up(dev);
    break;
   case 129:
    nb = x25_get_neigh(dev);
    if (nb) {
     x25_terminate_link(nb);
     x25_neigh_put(nb);
    }
    break;
   case 130:
    x25_kill_by_device(dev);
    x25_route_device_down(dev);
    x25_link_device_down(dev);
    break;
  }
 }

 return NOTIFY_DONE;
}
