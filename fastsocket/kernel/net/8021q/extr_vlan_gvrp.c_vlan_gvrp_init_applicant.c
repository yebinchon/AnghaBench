
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int garp_init_applicant (struct net_device*,int *) ;
 int vlan_gvrp_app ;

int vlan_gvrp_init_applicant(struct net_device *dev)
{
 return garp_init_applicant(dev, &vlan_gvrp_app);
}
