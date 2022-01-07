
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev_mqs (int,char*,int ,unsigned int,unsigned int) ;
 int ether_setup ;

struct net_device *alloc_etherdev_mqs(int sizeof_priv, unsigned int txqs,
          unsigned int rxqs)
{
 return alloc_netdev_mqs(sizeof_priv, "eth%d", ether_setup, txqs, rxqs);
}
