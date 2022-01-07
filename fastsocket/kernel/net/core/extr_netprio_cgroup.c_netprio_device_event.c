
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct netprio_map {int rcu; } ;
struct netdev_priomap_info {int priomap; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct netdev_priomap_info priomap_data; } ;



 int NOTIFY_DONE ;
 int call_rcu (int *,int ) ;
 int free_priomap_rcu ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int rcu_assign_pointer (int ,int *) ;
 struct netprio_map* rcu_dereference (int ) ;

__attribute__((used)) static int netprio_device_event(struct notifier_block *unused,
    unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;
 struct netprio_map *old;
 struct netdev_priomap_info *data;






 switch (event) {
 case 128:
  data = &netdev_extended(dev)->priomap_data;
  old = rcu_dereference(data->priomap);
  rcu_assign_pointer(data->priomap, ((void*)0));
  if (old)
   call_rcu(&old->rcu, free_priomap_rcu);
  break;
 }
 return NOTIFY_DONE;
}
