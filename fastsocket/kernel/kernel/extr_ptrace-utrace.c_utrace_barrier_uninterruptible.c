
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;


 int ERESTARTSYS ;
 int schedule_timeout_uninterruptible (int) ;
 int utrace_barrier (struct task_struct*,struct utrace_engine*) ;

__attribute__((used)) static int utrace_barrier_uninterruptible(struct task_struct *target,
     struct utrace_engine *engine)
{
 for (;;) {
  int err = utrace_barrier(target, engine);

  if (err != -ERESTARTSYS)
   return err;

  schedule_timeout_uninterruptible(1);
 }
}
