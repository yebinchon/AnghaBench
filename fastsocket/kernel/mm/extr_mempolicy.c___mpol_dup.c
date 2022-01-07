
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mempolicy {int flags; int refcnt; } ;
typedef int nodemask_t ;
struct TYPE_5__ {struct mempolicy* mempolicy; } ;


 int ENOMEM ;
 struct mempolicy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MPOL_F_REBINDING ;
 int MPOL_REBIND_ONCE ;
 int MPOL_REBIND_STEP2 ;
 int atomic_set (int *,int) ;
 int cpuset_mems_allowed (TYPE_1__*) ;
 TYPE_1__* current ;
 scalar_t__ current_cpuset_is_being_rebound () ;
 struct mempolicy* kmem_cache_alloc (int ,int ) ;
 int mpol_rebind_policy (struct mempolicy*,int *,int ) ;
 int policy_cache ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

struct mempolicy *__mpol_dup(struct mempolicy *old)
{
 struct mempolicy *new = kmem_cache_alloc(policy_cache, GFP_KERNEL);

 if (!new)
  return ERR_PTR(-ENOMEM);


 if (old == current->mempolicy) {
  task_lock(current);
  *new = *old;
  task_unlock(current);
 } else
  *new = *old;

 rcu_read_lock();
 if (current_cpuset_is_being_rebound()) {
  nodemask_t mems = cpuset_mems_allowed(current);
  if (new->flags & MPOL_F_REBINDING)
   mpol_rebind_policy(new, &mems, MPOL_REBIND_STEP2);
  else
   mpol_rebind_policy(new, &mems, MPOL_REBIND_ONCE);
 }
 rcu_read_unlock();
 atomic_set(&new->refcnt, 1);
 return new;
}
