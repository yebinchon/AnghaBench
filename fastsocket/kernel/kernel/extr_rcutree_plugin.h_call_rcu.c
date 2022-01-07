
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int call_rcu_sched (struct rcu_head*,void (*) (struct rcu_head*)) ;

void call_rcu(struct rcu_head *head, void (*func)(struct rcu_head *rcu))
{
 call_rcu_sched(head, func);
}
