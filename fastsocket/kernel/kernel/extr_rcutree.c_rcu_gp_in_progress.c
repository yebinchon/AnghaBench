
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int gpnum; int completed; } ;


 scalar_t__ ACCESS_ONCE (int ) ;

__attribute__((used)) static int rcu_gp_in_progress(struct rcu_state *rsp)
{
 return ACCESS_ONCE(rsp->completed) != ACCESS_ONCE(rsp->gpnum);
}
