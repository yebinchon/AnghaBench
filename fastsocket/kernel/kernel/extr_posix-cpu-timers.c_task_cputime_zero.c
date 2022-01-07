
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_cputime {scalar_t__ sum_exec_runtime; int stime; int utime; } ;


 scalar_t__ cputime_eq (int ,int ) ;
 int cputime_zero ;

__attribute__((used)) static inline int task_cputime_zero(const struct task_cputime *cputime)
{
 if (cputime_eq(cputime->utime, cputime_zero) &&
     cputime_eq(cputime->stime, cputime_zero) &&
     cputime->sum_exec_runtime == 0)
  return 1;
 return 0;
}
