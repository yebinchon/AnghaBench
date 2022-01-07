
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct irlan_cb {int dummy; } ;


 struct net_device* alloc_netdev (int,char const*,int ) ;
 int irlan_eth_setup ;

struct net_device *alloc_irlandev(const char *name)
{
 return alloc_netdev(sizeof(struct irlan_cb), name,
       irlan_eth_setup);
}
