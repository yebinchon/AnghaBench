
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int lock; } ;


 int rcu_read_unlock () ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ipc_unlock(struct kern_ipc_perm *perm)
{
 spin_unlock(&perm->lock);
 rcu_read_unlock();
}
