
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int index_hlist; int name_hlist; int dev_list; } ;


 int ASSERT_RTNL () ;
 int dev_base_lock ;
 int hlist_del (int *) ;
 int list_del (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void unlist_netdevice(struct net_device *dev)
{
 ASSERT_RTNL();


 write_lock_bh(&dev_base_lock);
 list_del(&dev->dev_list);
 hlist_del(&dev->name_hlist);
 hlist_del(&dev->index_hlist);
 write_unlock_bh(&dev_base_lock);
}
