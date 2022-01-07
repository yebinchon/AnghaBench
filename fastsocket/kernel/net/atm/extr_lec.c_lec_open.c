
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int stats; } ;


 int memset (int *,int ,int) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int lec_open(struct net_device *dev)
{
 netif_start_queue(dev);
 memset(&dev->stats, 0, sizeof(struct net_device_stats));

 return 0;
}
