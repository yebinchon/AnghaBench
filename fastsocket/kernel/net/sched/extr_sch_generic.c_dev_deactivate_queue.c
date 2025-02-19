
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int state; } ;


 int TCQ_F_BUILTIN ;
 int __QDISC_STATE_DEACTIVATED ;
 int qdisc_lock (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int rcu_assign_pointer (struct Qdisc*,struct Qdisc*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static void dev_deactivate_queue(struct net_device *dev,
     struct netdev_queue *dev_queue,
     void *_qdisc_default)
{
 struct Qdisc *qdisc_default = _qdisc_default;
 struct Qdisc *qdisc;

 qdisc = dev_queue->qdisc;
 if (qdisc) {
  spin_lock_bh(qdisc_lock(qdisc));

  if (!(qdisc->flags & TCQ_F_BUILTIN))
   set_bit(__QDISC_STATE_DEACTIVATED, &qdisc->state);

  rcu_assign_pointer(dev_queue->qdisc, qdisc_default);
  qdisc_reset(qdisc);

  spin_unlock_bh(qdisc_lock(qdisc));
 }
}
