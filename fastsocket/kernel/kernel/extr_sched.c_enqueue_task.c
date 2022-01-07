
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int on_rq; } ;
struct task_struct {TYPE_2__ se; TYPE_1__* sched_class; } ;
struct rq {int dummy; } ;
struct TYPE_3__ {int (* enqueue_task ) (struct rq*,struct task_struct*,int) ;} ;


 int sched_info_queued (struct task_struct*) ;
 int stub1 (struct rq*,struct task_struct*,int) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static void enqueue_task(struct rq *rq, struct task_struct *p, int flags)
{
 update_rq_clock(rq);
 sched_info_queued(p);
 p->sched_class->enqueue_task(rq, p, flags);
 p->se.on_rq = 1;
}
