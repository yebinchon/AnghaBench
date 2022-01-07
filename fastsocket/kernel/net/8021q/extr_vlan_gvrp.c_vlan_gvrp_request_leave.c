
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan_id ;
struct vlan_dev_info {int real_dev; int vlan_id; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int GVRP_ATTR_VID ;
 int garp_request_leave (int ,int *,int *,int,int ) ;
 int htons (int ) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device const*) ;
 int vlan_gvrp_app ;

void vlan_gvrp_request_leave(const struct net_device *dev)
{
 const struct vlan_dev_info *vlan = vlan_dev_info(dev);
 __be16 vlan_id = htons(vlan->vlan_id);

 garp_request_leave(vlan->real_dev, &vlan_gvrp_app,
      &vlan_id, sizeof(vlan_id), GVRP_ATTR_VID);
}
