
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev_mqs (int,char*,int ,unsigned int,unsigned int) ;
 int ether_setup ;

struct net_device *alloc_etherdev_mq(int sizeof_priv, unsigned int queue_count)
{
 return alloc_netdev_mqs(sizeof_priv, "eth%d", ether_setup,
    queue_count, queue_count);
}
