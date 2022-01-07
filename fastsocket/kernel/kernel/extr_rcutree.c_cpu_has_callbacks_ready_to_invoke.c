
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int ** nxttail; int nxtlist; } ;


 size_t RCU_DONE_TAIL ;

__attribute__((used)) static int
cpu_has_callbacks_ready_to_invoke(struct rcu_data *rdp)
{
 return &rdp->nxtlist != rdp->nxttail[RCU_DONE_TAIL];
}
