
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {unsigned int num_tx_queues; } ;
struct Qdisc {int dummy; } ;


 unsigned int TC_H_MIN (int ) ;
 unsigned int netdev_get_num_tc (struct net_device*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static unsigned long mqprio_get(struct Qdisc *sch, u32 classid)
{
 struct net_device *dev = qdisc_dev(sch);
 unsigned int ntx = TC_H_MIN(classid);

 if (ntx > dev->num_tx_queues + netdev_get_num_tc(dev))
  return 0;
 return ntx;
}
