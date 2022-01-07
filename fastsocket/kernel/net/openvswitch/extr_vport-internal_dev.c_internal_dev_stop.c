
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int internal_dev_stop(struct net_device *netdev)
{
 netif_stop_queue(netdev);
 return 0;
}
