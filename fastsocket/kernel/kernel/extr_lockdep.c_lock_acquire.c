
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;


 int __lock_acquire (struct lockdep_map*,unsigned int,int,int,int,int ,struct lockdep_map*,unsigned long,int ) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int irqs_disabled_flags (unsigned long) ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int trace_lock_acquire (struct lockdep_map*,unsigned int,int,int,int,struct lockdep_map*,unsigned long) ;
 scalar_t__ unlikely (int) ;

void lock_acquire(struct lockdep_map *lock, unsigned int subclass,
     int trylock, int read, int check,
     struct lockdep_map *nest_lock, unsigned long ip)
{
 unsigned long flags;

 trace_lock_acquire(lock, subclass, trylock, read, check, nest_lock, ip);

 if (unlikely(current->lockdep_recursion))
  return;

 raw_local_irq_save(flags);
 check_flags(flags);

 current->lockdep_recursion = 1;
 __lock_acquire(lock, subclass, trylock, read, check,
         irqs_disabled_flags(flags), nest_lock, ip, 0);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);
}
