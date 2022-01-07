
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_node; int nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;


 int BUG () ;

 int MPOL_DEFAULT ;


 int mpol_match_intent (struct mempolicy*,struct mempolicy*) ;
 int nodes_equal (int ,int ) ;

int __mpol_equal(struct mempolicy *a, struct mempolicy *b)
{
 if (!a || !b)
  return 0;
 if (a->mode != b->mode)
  return 0;
 if (a->mode != MPOL_DEFAULT && !mpol_match_intent(a, b))
  return 0;
 switch (a->mode) {
 case 130:

 case 129:
  return nodes_equal(a->v.nodes, b->v.nodes);
 case 128:
  return a->v.preferred_node == b->v.preferred_node &&
   a->flags == b->flags;
 default:
  BUG();
  return 0;
 }
}
