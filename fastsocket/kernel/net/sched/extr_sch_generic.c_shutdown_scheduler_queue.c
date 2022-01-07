
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; int qdisc; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;


 int qdisc_destroy (struct Qdisc*) ;
 int rcu_assign_pointer (int ,struct Qdisc*) ;

__attribute__((used)) static void shutdown_scheduler_queue(struct net_device *dev,
         struct netdev_queue *dev_queue,
         void *_qdisc_default)
{
 struct Qdisc *qdisc = dev_queue->qdisc_sleeping;
 struct Qdisc *qdisc_default = _qdisc_default;

 if (qdisc) {
  rcu_assign_pointer(dev_queue->qdisc, qdisc_default);
  dev_queue->qdisc_sleeping = qdisc_default;

  qdisc_destroy(qdisc);
 }
}
