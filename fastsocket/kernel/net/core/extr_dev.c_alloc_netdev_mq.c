
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev_mqs (int,char const*,void (*) (struct net_device*),unsigned int,unsigned int) ;

struct net_device *alloc_netdev_mq(int sizeof_priv, const char *name,
  void (*setup)(struct net_device *), unsigned int queue_count)
{
 return alloc_netdev_mqs(sizeof_priv, name, setup, queue_count,
    queue_count);
}
