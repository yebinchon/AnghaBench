
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct Qdisc {int dummy; } ;


 struct netdev_queue* mqprio_queue_get (struct Qdisc*,unsigned long) ;

__attribute__((used)) static struct Qdisc *mqprio_leaf(struct Qdisc *sch, unsigned long cl)
{
 struct netdev_queue *dev_queue = mqprio_queue_get(sch, cl);

 if (!dev_queue)
  return ((void*)0);

 return dev_queue->qdisc_sleeping;
}
