
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; int prev; } ;
struct mutex {scalar_t__ owner; TYPE_1__ wait_list; struct mutex* magic; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 scalar_t__ current_thread_info () ;
 int debug_locks ;
 int mutex_clear_owner (struct mutex*) ;
 scalar_t__ unlikely (int) ;

void debug_mutex_unlock(struct mutex *lock)
{
 if (unlikely(!debug_locks))
  return;

 DEBUG_LOCKS_WARN_ON(lock->magic != lock);
 DEBUG_LOCKS_WARN_ON(lock->owner != current_thread_info());
 DEBUG_LOCKS_WARN_ON(!lock->wait_list.prev && !lock->wait_list.next);
 mutex_clear_owner(lock);
}
