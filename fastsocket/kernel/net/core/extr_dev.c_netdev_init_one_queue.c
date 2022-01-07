
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct net_device* dev; } ;
struct net_device {int dummy; } ;



__attribute__((used)) static void netdev_init_one_queue(struct net_device *dev,
      struct netdev_queue *queue,
      void *_unused)
{
 queue->dev = dev;
}
