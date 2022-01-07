
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int qdisc; struct Qdisc* qdisc_sleeping; } ;
struct Qdisc {int refcnt; } ;
typedef int spinlock_t ;


 int atomic_read (int *) ;
 struct Qdisc noop_qdisc ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;
 int rcu_assign_pointer (int ,struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct Qdisc *dev_graft_qdisc(struct netdev_queue *dev_queue,
         struct Qdisc *qdisc)
{
 struct Qdisc *oqdisc = dev_queue->qdisc_sleeping;
 spinlock_t *root_lock;

 root_lock = qdisc_lock(oqdisc);
 spin_lock_bh(root_lock);


 if (oqdisc && atomic_read(&oqdisc->refcnt) <= 1)
  qdisc_reset(oqdisc);


 if (qdisc == ((void*)0))
  qdisc = &noop_qdisc;
 dev_queue->qdisc_sleeping = qdisc;
 rcu_assign_pointer(dev_queue->qdisc, &noop_qdisc);

 spin_unlock_bh(root_lock);

 return oqdisc;
}
