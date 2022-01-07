
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* parent; TYPE_1__* mm; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int core_state; } ;


 TYPE_3__* current ;
 int likely (int ) ;
 int task_ptrace (TYPE_3__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int may_ptrace_stop(void)
{
 if (!likely(task_ptrace(current)))
  return 0;
 if (unlikely(current->mm->core_state) &&
     unlikely(current->mm == current->parent->mm))
  return 0;

 return 1;
}
