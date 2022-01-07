
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_node; int nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;
typedef int nodemask_t ;


 int BUG () ;

 int MPOL_F_LOCAL ;


 struct mempolicy default_policy ;
 int node_set (int ,int ) ;
 int nodes_clear (int ) ;

__attribute__((used)) static void get_policy_nodemask(struct mempolicy *p, nodemask_t *nodes)
{
 nodes_clear(*nodes);
 if (p == &default_policy)
  return;

 switch (p->mode) {
 case 130:

 case 129:
  *nodes = p->v.nodes;
  break;
 case 128:
  if (!(p->flags & MPOL_F_LOCAL))
   node_set(p->v.preferred_node, *nodes);

  break;
 default:
  BUG();
 }
}
