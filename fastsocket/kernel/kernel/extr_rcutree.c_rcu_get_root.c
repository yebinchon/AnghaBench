
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {struct rcu_node* node; } ;
struct rcu_node {int dummy; } ;



__attribute__((used)) static struct rcu_node *rcu_get_root(struct rcu_state *rsp)
{
 return &rsp->node[0];
}
