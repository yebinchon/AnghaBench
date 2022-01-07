
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int arp_tbl ;
 int neigh_ifdown (int *,struct net_device*) ;

void arp_ifdown(struct net_device *dev)
{
 neigh_ifdown(&arp_tbl, dev);
}
