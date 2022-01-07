
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ lockdep_depth; } ;
struct lockdep_map {int dummy; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 int debug_locks ;
 int irqs_disabled () ;
 int print_unlock_inbalance_bug (struct task_struct*,struct lockdep_map*,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_unlock(struct task_struct *curr, struct lockdep_map *lock,
   unsigned long ip)
{
 if (unlikely(!debug_locks))
  return 0;
 if (DEBUG_LOCKS_WARN_ON(!irqs_disabled()))
  return 0;

 if (curr->lockdep_depth <= 0)
  return print_unlock_inbalance_bug(curr, lock, ip);

 return 1;
}
