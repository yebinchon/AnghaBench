
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct net_device_ops {int (* ndo_set_mac_address ) (struct net_device*,struct sockaddr*) ;} ;
struct net_device {scalar_t__ type; struct net_device_ops* netdev_ops; } ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int NETDEV_CHANGEADDR ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,struct sockaddr*) ;

int dev_set_mac_address(struct net_device *dev, struct sockaddr *sa)
{
 const struct net_device_ops *ops = dev->netdev_ops;
 int err;

 if (!ops->ndo_set_mac_address)
  return -EOPNOTSUPP;
 if (sa->sa_family != dev->type)
  return -EINVAL;
 if (!netif_device_present(dev))
  return -ENODEV;
 err = ops->ndo_set_mac_address(dev, sa);
 if (!err)
  call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);
 return err;
}
