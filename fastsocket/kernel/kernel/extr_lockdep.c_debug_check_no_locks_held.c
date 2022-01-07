
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ lockdep_depth; } ;


 int print_held_locks_bug (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

void debug_check_no_locks_held(struct task_struct *task)
{
 if (unlikely(task->lockdep_depth > 0))
  print_held_locks_bug(task);
}
