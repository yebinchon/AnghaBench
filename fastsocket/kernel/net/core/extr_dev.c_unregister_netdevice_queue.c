
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int unreg_list; } ;


 int ASSERT_RTNL () ;
 int list_add_tail (int *,struct list_head*) ;
 int net_set_todo (struct net_device*) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int rollback_registered (struct net_device*) ;

void unregister_netdevice_queue(struct net_device *dev, struct list_head *head)
{
 ASSERT_RTNL();

 if (head) {
  list_add_tail(&netdev_extended(dev)->unreg_list, head);
 } else {
  rollback_registered(dev);

  net_set_todo(dev);
 }
}
