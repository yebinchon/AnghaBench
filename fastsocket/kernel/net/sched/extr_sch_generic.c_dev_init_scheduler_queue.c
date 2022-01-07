
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; struct Qdisc* qdisc; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static void dev_init_scheduler_queue(struct net_device *dev,
         struct netdev_queue *dev_queue,
         void *_qdisc)
{
 struct Qdisc *qdisc = _qdisc;

 dev_queue->qdisc = qdisc;
 dev_queue->qdisc_sleeping = qdisc;
}
