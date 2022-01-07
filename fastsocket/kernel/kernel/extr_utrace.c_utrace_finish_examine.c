
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_examiner {scalar_t__ state; unsigned long ncsw; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {scalar_t__ state; } ;


 int EAGAIN ;
 int EINVAL ;
 struct task_struct* current ;
 int engine_wants_stop (struct utrace_engine*) ;
 int get_task_struct (struct task_struct*) ;
 scalar_t__ likely (int) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 unsigned long wait_task_inactive (struct task_struct*,scalar_t__) ;

int utrace_finish_examine(struct task_struct *target,
     struct utrace_engine *engine,
     struct utrace_examiner *exam)
{
 int ret = 0;

 if (unlikely(target == current))
  return 0;

 rcu_read_lock();
 if (unlikely(!engine_wants_stop(engine)))
  ret = -EINVAL;
 else if (unlikely(target->state != exam->state))
  ret = -EAGAIN;
 else
  get_task_struct(target);
 rcu_read_unlock();

 if (likely(!ret)) {
  unsigned long ncsw = wait_task_inactive(target, exam->state);
  if (unlikely(ncsw != exam->ncsw))
   ret = -EAGAIN;
  put_task_struct(target);
 }

 return ret;
}
