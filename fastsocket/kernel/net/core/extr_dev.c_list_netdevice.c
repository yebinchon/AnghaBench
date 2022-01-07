
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; int index_hlist; int name; int name_hlist; int dev_list; } ;
struct net {int dev_base_head; } ;


 int ASSERT_RTNL () ;
 int dev_base_lock ;
 int dev_index_hash (struct net*,int ) ;
 int dev_name_hash (struct net*,int ) ;
 struct net* dev_net (struct net_device*) ;
 int hlist_add_head (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int list_netdevice(struct net_device *dev)
{
 struct net *net = dev_net(dev);

 ASSERT_RTNL();

 write_lock_bh(&dev_base_lock);
 list_add_tail(&dev->dev_list, &net->dev_base_head);
 hlist_add_head(&dev->name_hlist, dev_name_hash(net, dev->name));
 hlist_add_head(&dev->index_hlist, dev_index_hash(net, dev->ifindex));
 write_unlock_bh(&dev_base_lock);
 return 0;
}
