
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_info {int dummy; } ;
struct net_device {int dummy; } ;


 struct vlan_dev_info* netdev_priv (struct net_device const*) ;

__attribute__((used)) static inline struct vlan_dev_info *vlan_dev_info(const struct net_device *dev)
{
 return netdev_priv(dev);
}
