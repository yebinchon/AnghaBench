
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int wait_list; int wait_lock; int count; int dep_map; } ;
struct lock_class_key {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int RWSEM_UNLOCKED_VALUE ;
 int debug_check_no_locks_freed (void*,int) ;
 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;
 int spin_lock_init (int *) ;

void __init_rwsem(struct rw_semaphore *sem, const char *name,
    struct lock_class_key *key)
{







 sem->count = RWSEM_UNLOCKED_VALUE;
 spin_lock_init(&sem->wait_lock);
 INIT_LIST_HEAD(&sem->wait_list);
}
