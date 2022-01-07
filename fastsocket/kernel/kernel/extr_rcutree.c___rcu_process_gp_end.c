
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;
struct rcu_node {scalar_t__ completed; } ;
struct rcu_data {scalar_t__ completed; int * nxttail; } ;


 size_t RCU_DONE_TAIL ;
 size_t RCU_NEXT_READY_TAIL ;
 size_t RCU_NEXT_TAIL ;
 size_t RCU_WAIT_TAIL ;

__attribute__((used)) static void
__rcu_process_gp_end(struct rcu_state *rsp, struct rcu_node *rnp, struct rcu_data *rdp)
{

 if (rdp->completed != rnp->completed) {


  rdp->nxttail[RCU_DONE_TAIL] = rdp->nxttail[RCU_WAIT_TAIL];
  rdp->nxttail[RCU_WAIT_TAIL] = rdp->nxttail[RCU_NEXT_READY_TAIL];
  rdp->nxttail[RCU_NEXT_READY_TAIL] = rdp->nxttail[RCU_NEXT_TAIL];


  rdp->completed = rnp->completed;
 }
}
