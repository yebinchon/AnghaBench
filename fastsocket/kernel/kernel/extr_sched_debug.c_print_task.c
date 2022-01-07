
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sum_sleep_runtime; int sum_exec_runtime; int vruntime; } ;
struct task_struct {TYPE_1__ se; int prio; scalar_t__ nivcsw; scalar_t__ nvcsw; int pid; int comm; } ;
struct seq_file {int dummy; } ;
struct rq {struct task_struct* curr; } ;


 int SEQ_printf (struct seq_file*,char*,...) ;
 int SPLIT_NS (int ) ;
 int task_group (struct task_struct*) ;
 int task_group_path (int ) ;

__attribute__((used)) static void
print_task(struct seq_file *m, struct rq *rq, struct task_struct *p)
{
 if (rq->curr == p)
  SEQ_printf(m, "R");
 else
  SEQ_printf(m, " ");

 SEQ_printf(m, "%15s %5d %9Ld.%06ld %9Ld %5d ",
  p->comm, p->pid,
  SPLIT_NS(p->se.vruntime),
  (long long)(p->nvcsw + p->nivcsw),
  p->prio);






 SEQ_printf(m, "%15Ld %15Ld %15Ld.%06ld %15Ld.%06ld %15Ld.%06ld",
  0LL, 0LL, 0LL, 0L, 0LL, 0L, 0LL, 0L);





 SEQ_printf(m, "\n");
}
