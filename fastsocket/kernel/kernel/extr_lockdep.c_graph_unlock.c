
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lockdep_recursion; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int __raw_spin_is_locked (int *) ;
 int __raw_spin_unlock (int *) ;
 TYPE_1__* current ;
 scalar_t__ debug_locks ;
 int lockdep_lock ;

__attribute__((used)) static inline int graph_unlock(void)
{
 if (debug_locks && !__raw_spin_is_locked(&lockdep_lock))
  return DEBUG_LOCKS_WARN_ON(1);

 current->lockdep_recursion--;
 __raw_spin_unlock(&lockdep_lock);
 return 0;
}
