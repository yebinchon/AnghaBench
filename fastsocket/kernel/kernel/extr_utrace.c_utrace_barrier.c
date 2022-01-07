
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct utrace {int lock; struct utrace_engine* reporting; } ;
struct task_struct {int dummy; } ;


 int ERESTARTSYS ;
 int IS_ERR (struct utrace*) ;
 int PTR_ERR (struct utrace*) ;
 struct task_struct* current ;
 struct utrace* get_utrace_lock (struct task_struct*,struct utrace_engine*,int) ;
 int schedule_timeout_interruptible (int) ;
 int signal_pending (struct task_struct*) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int utrace_barrier(struct task_struct *target, struct utrace_engine *engine)
{
 struct utrace *utrace;
 int ret = -ERESTARTSYS;

 if (unlikely(target == current))
  return 0;

 do {
  utrace = get_utrace_lock(target, engine, 0);
  if (unlikely(IS_ERR(utrace))) {
   ret = PTR_ERR(utrace);
   if (ret != -ERESTARTSYS)
    break;
  } else {
   if (utrace->reporting != engine)
    ret = 0;
   spin_unlock(&utrace->lock);
   if (!ret)
    break;
  }
  schedule_timeout_interruptible(1);
 } while (!signal_pending(current));

 return ret;
}
