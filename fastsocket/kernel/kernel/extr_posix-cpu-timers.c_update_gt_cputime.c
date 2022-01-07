
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_cputime {scalar_t__ sum_exec_runtime; int stime; int utime; } ;


 scalar_t__ cputime_gt (int ,int ) ;

__attribute__((used)) static void update_gt_cputime(struct task_cputime *a, struct task_cputime *b)
{
 if (cputime_gt(b->utime, a->utime))
  a->utime = b->utime;

 if (cputime_gt(b->stime, a->stime))
  a->stime = b->stime;

 if (b->sum_exec_runtime > a->sum_exec_runtime)
  a->sum_exec_runtime = b->sum_exec_runtime;
}
