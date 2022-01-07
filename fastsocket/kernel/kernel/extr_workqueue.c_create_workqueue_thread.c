
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {scalar_t__ rt; int name; } ;
struct task_struct {int dummy; } ;
struct sched_param {int sched_priority; } ;
struct cpu_workqueue_struct {struct task_struct* thread; struct workqueue_struct* wq; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int MAX_RT_PRIO ;
 int PTR_ERR (struct task_struct*) ;
 int SCHED_FIFO ;
 scalar_t__ is_wq_single_threaded (struct workqueue_struct*) ;
 struct task_struct* kthread_create (int ,struct cpu_workqueue_struct*,char const*,int ,int) ;
 int sched_setscheduler_nocheck (struct task_struct*,int ,struct sched_param*) ;
 int trace_workqueue_creation (struct task_struct*,int) ;
 int worker_thread ;

__attribute__((used)) static int create_workqueue_thread(struct cpu_workqueue_struct *cwq, int cpu)
{
 struct sched_param param = { .sched_priority = MAX_RT_PRIO-1 };
 struct workqueue_struct *wq = cwq->wq;
 const char *fmt = is_wq_single_threaded(wq) ? "%s" : "%s/%d";
 struct task_struct *p;

 p = kthread_create(worker_thread, cwq, fmt, wq->name, cpu);
 if (IS_ERR(p))
  return PTR_ERR(p);
 if (cwq->wq->rt)
  sched_setscheduler_nocheck(p, SCHED_FIFO, &param);
 cwq->thread = p;

 trace_workqueue_creation(cwq->thread, cpu);

 return 0;
}
