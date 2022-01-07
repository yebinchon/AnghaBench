
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int dev_addrs; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int NETDEV_CHANGEADDR ;
 int __hw_addr_del_multiple (int *,int *,scalar_t__,unsigned char) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;

int dev_addr_del_multiple(struct net_device *to_dev,
     struct net_device *from_dev,
     unsigned char addr_type)
{
 ASSERT_RTNL();

 if (from_dev->addr_len != to_dev->addr_len)
  return -EINVAL;
 __hw_addr_del_multiple(&to_dev->dev_addrs, &from_dev->dev_addrs,
          to_dev->addr_len, addr_type);
 call_netdevice_notifiers(NETDEV_CHANGEADDR, to_dev);
 return 0;
}
