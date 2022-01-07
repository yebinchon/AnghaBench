
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int __call_rcu (struct rcu_head*,void (*) (struct rcu_head*),int *) ;
 int rcu_bh_state ;

void call_rcu_bh(struct rcu_head *head, void (*func)(struct rcu_head *rcu))
{
 __call_rcu(head, func, &rcu_bh_state);
}
