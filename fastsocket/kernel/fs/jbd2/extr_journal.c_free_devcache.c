
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int kfree (struct rcu_head*) ;

__attribute__((used)) static void free_devcache(struct rcu_head *rcu)
{
 kfree(rcu);
}
