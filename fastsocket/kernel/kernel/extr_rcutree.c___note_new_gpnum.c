
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;
struct rcu_node {scalar_t__ gpnum; } ;
struct rcu_data {scalar_t__ gpnum; int qs_pending; scalar_t__ passed_quiesc; } ;



__attribute__((used)) static void __note_new_gpnum(struct rcu_state *rsp, struct rcu_node *rnp, struct rcu_data *rdp)
{
 if (rdp->gpnum != rnp->gpnum) {
  rdp->qs_pending = 1;
  rdp->passed_quiesc = 0;
  rdp->gpnum = rnp->gpnum;
 }
}
