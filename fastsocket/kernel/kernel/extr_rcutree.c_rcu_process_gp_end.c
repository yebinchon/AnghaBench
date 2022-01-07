
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;
struct rcu_node {int lock; int completed; } ;
struct rcu_data {scalar_t__ completed; struct rcu_node* mynode; } ;


 scalar_t__ ACCESS_ONCE (int ) ;
 int __rcu_process_gp_end (struct rcu_state*,struct rcu_node*,struct rcu_data*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spin_trylock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
rcu_process_gp_end(struct rcu_state *rsp, struct rcu_data *rdp)
{
 unsigned long flags;
 struct rcu_node *rnp;

 local_irq_save(flags);
 rnp = rdp->mynode;
 if (rdp->completed == ACCESS_ONCE(rnp->completed) ||
     !spin_trylock(&rnp->lock)) {
  local_irq_restore(flags);
  return;
 }
 __rcu_process_gp_end(rsp, rnp, rdp);
 spin_unlock_irqrestore(&rnp->lock, flags);
}
