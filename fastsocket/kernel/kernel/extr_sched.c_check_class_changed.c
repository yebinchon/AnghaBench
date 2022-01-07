
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct sched_class const* sched_class; } ;
struct sched_class {int (* prio_changed ) (struct rq*,struct task_struct*,int,int) ;int (* switched_to ) (struct rq*,struct task_struct*,int) ;int (* switched_from ) (struct rq*,struct task_struct*,int) ;} ;
struct rq {int dummy; } ;


 int sched_autogroup_move_task (struct task_struct*) ;
 int stub1 (struct rq*,struct task_struct*,int) ;
 int stub2 (struct rq*,struct task_struct*,int) ;
 int stub3 (struct rq*,struct task_struct*,int,int) ;

__attribute__((used)) static inline void check_class_changed(struct rq *rq, struct task_struct *p,
           const struct sched_class *prev_class,
           int oldprio, int running)
{
 if (prev_class != p->sched_class) {





  sched_autogroup_move_task(p);

  if (prev_class->switched_from)
   prev_class->switched_from(rq, p, running);
  p->sched_class->switched_to(rq, p, running);
 } else
  p->sched_class->prio_changed(rq, p, oldprio, running);
}
