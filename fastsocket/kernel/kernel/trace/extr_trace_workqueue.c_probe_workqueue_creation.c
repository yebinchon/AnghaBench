
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pid; } ;
struct cpu_workqueue_stats {int cpu; int list; int pid; int kref; } ;
struct TYPE_2__ {int lock; int list; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int kref_init (int *) ;
 struct cpu_workqueue_stats* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_warning (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* workqueue_cpu_stat (int) ;

__attribute__((used)) static void probe_workqueue_creation(struct task_struct *wq_thread, int cpu)
{
 struct cpu_workqueue_stats *cws;
 unsigned long flags;

 WARN_ON(cpu < 0);


 cws = kzalloc(sizeof(struct cpu_workqueue_stats), GFP_ATOMIC);
 if (!cws) {
  pr_warning("trace_workqueue: not enough memory\n");
  return;
 }
 INIT_LIST_HEAD(&cws->list);
 kref_init(&cws->kref);
 cws->cpu = cpu;
 cws->pid = wq_thread->pid;

 spin_lock_irqsave(&workqueue_cpu_stat(cpu)->lock, flags);
 list_add_tail(&cws->list, &workqueue_cpu_stat(cpu)->list);
 spin_unlock_irqrestore(&workqueue_cpu_stat(cpu)->lock, flags);
}
