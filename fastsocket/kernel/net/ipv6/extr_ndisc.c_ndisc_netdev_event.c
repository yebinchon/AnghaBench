
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;




 int NOTIFY_DONE ;
 struct net* dev_net (struct net_device*) ;
 int fib6_run_gc (int ,struct net*,int) ;
 int nd_tbl ;
 int neigh_changeaddr (int *,struct net_device*) ;
 int neigh_ifdown (int *,struct net_device*) ;

__attribute__((used)) static int ndisc_netdev_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;
 struct net *net = dev_net(dev);

 switch (event) {
 case 129:
  neigh_changeaddr(&nd_tbl, dev);
  fib6_run_gc(0, net, 0);
  break;
 case 128:
  neigh_ifdown(&nd_tbl, dev);
  fib6_run_gc(0, net, 0);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
