
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_cputime {scalar_t__ sum_exec_runtime; int stime; int utime; } ;


 int cputime_add (int ,int ) ;
 int cputime_eq (int ,int ) ;
 scalar_t__ cputime_ge (int ,int ) ;
 int cputime_zero ;

__attribute__((used)) static inline int task_cputime_expired(const struct task_cputime *sample,
     const struct task_cputime *expires)
{
 if (!cputime_eq(expires->utime, cputime_zero) &&
     cputime_ge(sample->utime, expires->utime))
  return 1;
 if (!cputime_eq(expires->stime, cputime_zero) &&
     cputime_ge(cputime_add(sample->utime, sample->stime),
         expires->stime))
  return 1;
 if (expires->sum_exec_runtime != 0 &&
     sample->sum_exec_runtime >= expires->sum_exec_runtime)
  return 1;
 return 0;
}
