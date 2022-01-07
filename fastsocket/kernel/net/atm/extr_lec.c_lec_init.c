
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int * netdev_ops; } ;


 int lec_netdev_ops ;
 int printk (char*,int ) ;

__attribute__((used)) static void lec_init(struct net_device *dev)
{
 dev->netdev_ops = &lec_netdev_ops;
 printk("%s: Initialized!\n", dev->name);
}
