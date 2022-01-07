
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ freezing (struct task_struct*) ;
 scalar_t__ frozen (struct task_struct*) ;
 scalar_t__ task_is_stopped_or_traced (struct task_struct*) ;

__attribute__((used)) static bool is_task_frozen_enough(struct task_struct *task)
{
 return frozen(task) ||
  (task_is_stopped_or_traced(task) && freezing(task));
}
