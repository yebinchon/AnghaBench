
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct edge_info {unsigned int max_cond_equivalences; scalar_t__* cond_equivalences; scalar_t__ rhs; scalar_t__ lhs; } ;
typedef TYPE_1__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_3__ {scalar_t__ src; scalar_t__ aux; } ;


 int CDI_DOMINATORS ;
 scalar_t__ get_immediate_dominator (int ,scalar_t__) ;
 int record_cond (scalar_t__,scalar_t__) ;
 int record_equality (scalar_t__,scalar_t__) ;
 TYPE_1__* single_incoming_edge_ignoring_loop_edges (scalar_t__) ;

__attribute__((used)) static void
record_equivalences_from_incoming_edge (basic_block bb)
{
  edge e;
  basic_block parent;
  struct edge_info *edge_info;




  parent = get_immediate_dominator (CDI_DOMINATORS, bb);

  e = single_incoming_edge_ignoring_loop_edges (bb);



  if (e && e->src == parent)
    {
      unsigned int i;

      edge_info = (struct edge_info *) e->aux;

      if (edge_info)
 {
   tree lhs = edge_info->lhs;
   tree rhs = edge_info->rhs;
   tree *cond_equivalences = edge_info->cond_equivalences;

   if (lhs)
     record_equality (lhs, rhs);

   if (cond_equivalences)
     {
       for (i = 0; i < edge_info->max_cond_equivalences; i += 2)
  {
    tree expr = cond_equivalences[i];
    tree value = cond_equivalences[i + 1];

    record_cond (expr, value);
  }
     }
 }
    }
}
