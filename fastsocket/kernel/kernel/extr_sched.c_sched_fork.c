
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {scalar_t__ policy; int pushable_tasks; scalar_t__ oncpu; int sched_info; TYPE_2__* sched_class; int prio; scalar_t__ sched_reset_on_fork; int static_prio; int normal_prio; int state; } ;
struct TYPE_6__ {int normal_prio; } ;
struct TYPE_5__ {int (* task_fork ) (struct task_struct*) ;} ;
struct TYPE_4__ {int preempt_count; } ;


 int MAX_PRIO ;
 int NICE_TO_PRIO (int ) ;
 scalar_t__ PRIO_TO_NICE (int ) ;
 scalar_t__ SCHED_FIFO ;
 scalar_t__ SCHED_NORMAL ;
 scalar_t__ SCHED_RR ;
 int TASK_RUNNING ;
 int __sched_fork (struct task_struct*) ;
 TYPE_3__* current ;
 TYPE_2__ fair_sched_class ;
 int get_cpu () ;
 scalar_t__ likely (int ) ;
 int memset (int *,int ,int) ;
 int plist_node_init (int *,int ) ;
 int put_cpu () ;
 int rt_prio (int ) ;
 int sched_info_on () ;
 int set_load_weight (struct task_struct*) ;
 int set_task_cpu (struct task_struct*,int) ;
 int stub1 (struct task_struct*) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (scalar_t__) ;

void sched_fork(struct task_struct *p, int clone_flags)
{
 int cpu = get_cpu();

 __sched_fork(p);





 p->state = TASK_RUNNING;




 if (unlikely(p->sched_reset_on_fork)) {
  if (p->policy == SCHED_FIFO || p->policy == SCHED_RR) {
   p->policy = SCHED_NORMAL;
   p->normal_prio = p->static_prio;
  }

  if (PRIO_TO_NICE(p->static_prio) < 0) {
   p->static_prio = NICE_TO_PRIO(0);
   p->normal_prio = p->static_prio;
   set_load_weight(p);
  }





  p->sched_reset_on_fork = 0;
 }




 p->prio = current->normal_prio;

 if (!rt_prio(p->prio))
  p->sched_class = &fair_sched_class;

 if (p->sched_class->task_fork)
  p->sched_class->task_fork(p);

 set_task_cpu(p, cpu);
 plist_node_init(&p->pushable_tasks, MAX_PRIO);

 put_cpu();
}
