
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;


 int __lock_is_held (struct lockdep_map*) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 scalar_t__ unlikely (int) ;

int lock_is_held(struct lockdep_map *lock)
{
 unsigned long flags;
 int ret = 0;

 if (unlikely(current->lockdep_recursion))
  return ret;

 raw_local_irq_save(flags);
 check_flags(flags);

 current->lockdep_recursion = 1;
 ret = __lock_is_held(lock);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);

 return ret;
}
