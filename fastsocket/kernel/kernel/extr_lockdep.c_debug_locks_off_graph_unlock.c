
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_spin_unlock (int *) ;
 int debug_locks_off () ;
 int lockdep_lock ;

__attribute__((used)) static inline int debug_locks_off_graph_unlock(void)
{
 int ret = debug_locks_off();

 __raw_spin_unlock(&lockdep_lock);

 return ret;
}
