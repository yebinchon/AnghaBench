
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int lock; } ;


 int rcu_read_lock () ;
 int spin_lock (int *) ;

__attribute__((used)) static inline void ipc_lock_by_ptr(struct kern_ipc_perm *perm)
{
 rcu_read_lock();
 spin_lock(&perm->lock);
}
