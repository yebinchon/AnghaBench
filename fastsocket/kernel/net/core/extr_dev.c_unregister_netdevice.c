
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int unregister_netdevice_queue (struct net_device*,int *) ;

void unregister_netdevice(struct net_device *dev)
{
 unregister_netdevice_queue(dev, ((void*)0));
}
