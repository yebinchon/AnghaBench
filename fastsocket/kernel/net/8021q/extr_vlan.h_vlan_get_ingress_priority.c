
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vlan_dev_info {int * ingress_priority_map; } ;
struct net_device {int dummy; } ;


 int VLAN_PRIO_SHIFT ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static inline u32 vlan_get_ingress_priority(struct net_device *dev,
         u16 vlan_tci)
{
 struct vlan_dev_info *vip = vlan_dev_info(dev);

 return vip->ingress_priority_map[(vlan_tci >> VLAN_PRIO_SHIFT) & 0x7];
}
