
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int dev_addrs; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int NETDEV_CHANGEADDR ;
 int __hw_addr_add_multiple (int *,int *,scalar_t__,unsigned char) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;

int dev_addr_add_multiple(struct net_device *to_dev,
     struct net_device *from_dev,
     unsigned char addr_type)
{
 int err;

 ASSERT_RTNL();

 if (from_dev->addr_len != to_dev->addr_len)
  return -EINVAL;
 err = __hw_addr_add_multiple(&to_dev->dev_addrs, &from_dev->dev_addrs,
         to_dev->addr_len, addr_type);
 if (!err)
  call_netdevice_notifiers(NETDEV_CHANGEADDR, to_dev);
 return err;
}
