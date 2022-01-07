
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {scalar_t__ gpnum; } ;
struct rcu_data {scalar_t__ gpnum; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int note_new_gpnum (struct rcu_state*,struct rcu_data*) ;

__attribute__((used)) static int
check_for_new_grace_period(struct rcu_state *rsp, struct rcu_data *rdp)
{
 unsigned long flags;
 int ret = 0;

 local_irq_save(flags);
 if (rdp->gpnum != rsp->gpnum) {
  note_new_gpnum(rsp, rdp);
  ret = 1;
 }
 local_irq_restore(flags);
 return ret;
}
