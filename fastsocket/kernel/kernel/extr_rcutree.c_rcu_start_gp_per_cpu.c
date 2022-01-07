
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;
struct rcu_node {int dummy; } ;
struct rcu_data {int * nxttail; } ;


 size_t RCU_NEXT_READY_TAIL ;
 size_t RCU_NEXT_TAIL ;
 size_t RCU_WAIT_TAIL ;
 int __note_new_gpnum (struct rcu_state*,struct rcu_node*,struct rcu_data*) ;
 int __rcu_process_gp_end (struct rcu_state*,struct rcu_node*,struct rcu_data*) ;

__attribute__((used)) static void
rcu_start_gp_per_cpu(struct rcu_state *rsp, struct rcu_node *rnp, struct rcu_data *rdp)
{

 __rcu_process_gp_end(rsp, rnp, rdp);
 rdp->nxttail[RCU_NEXT_READY_TAIL] = rdp->nxttail[RCU_NEXT_TAIL];
 rdp->nxttail[RCU_WAIT_TAIL] = rdp->nxttail[RCU_NEXT_TAIL];


 __note_new_gpnum(rsp, rnp, rdp);
}
