
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int dev; } ;


 int dev_net (int ) ;
 int rt_cache_flush (int ,int ) ;

void ip_rt_multicast_event(struct in_device *in_dev)
{
 rt_cache_flush(dev_net(in_dev->dev), 0);
}
