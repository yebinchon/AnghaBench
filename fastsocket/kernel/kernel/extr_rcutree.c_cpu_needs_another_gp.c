
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;
struct rcu_data {scalar_t__** nxttail; } ;


 size_t RCU_DONE_TAIL ;
 int rcu_gp_in_progress (struct rcu_state*) ;

__attribute__((used)) static int
cpu_needs_another_gp(struct rcu_state *rsp, struct rcu_data *rdp)
{
 return *rdp->nxttail[RCU_DONE_TAIL] && !rcu_gp_in_progress(rsp);
}
