
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {int lock; scalar_t__ vfork_stop; } ;
struct task_struct {int dummy; } ;


 int UTRACE_RESUME ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct utrace* task_utrace_struct (struct task_struct*) ;
 int utrace_stop (struct task_struct*,struct utrace*,int ) ;

void utrace_finish_vfork(struct task_struct *task)
{
 struct utrace *utrace = task_utrace_struct(task);

 if (utrace->vfork_stop) {
  spin_lock(&utrace->lock);
  utrace->vfork_stop = 0;
  spin_unlock(&utrace->lock);
  utrace_stop(task, utrace, UTRACE_RESUME);
 }
}
