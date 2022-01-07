
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct rq {int lock; int curr; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;


 int __set_task_cpu (struct task_struct*,int) ;
 int current ;
 scalar_t__ entity_before (struct sched_entity*,struct sched_entity*) ;
 int place_entity (struct cfs_rq*,struct sched_entity*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int resched_task (int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (int ,int ) ;
 scalar_t__ sysctl_sched_child_runs_first ;
 struct cfs_rq* task_cfs_rq (int ) ;
 struct rq* this_rq () ;
 int update_curr (struct cfs_rq*) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static void task_fork_fair(struct task_struct *p)
{
 struct cfs_rq *cfs_rq;
 struct sched_entity *se = &p->se, *curr;
 int this_cpu = smp_processor_id();
 struct rq *rq = this_rq();
 unsigned long flags;

 spin_lock_irqsave(&rq->lock, flags);

 update_rq_clock(rq);

 cfs_rq = task_cfs_rq(current);
 curr = cfs_rq->curr;







 rcu_read_lock();
 __set_task_cpu(p, this_cpu);
 rcu_read_unlock();

 update_curr(cfs_rq);

 if (curr)
  se->vruntime = curr->vruntime;
 place_entity(cfs_rq, se, 1);

 if (sysctl_sched_child_runs_first && curr && entity_before(curr, se)) {




  swap(curr->vruntime, se->vruntime);
  resched_task(rq->curr);
 }

 se->vruntime -= cfs_rq->min_vruntime;

 spin_unlock_irqrestore(&rq->lock, flags);
}
