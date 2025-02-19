
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ t_bool ;
struct loop {int dummy; } ;
typedef int basic_block ;
struct TYPE_2__ {int src; } ;


 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;
 TYPE_1__* PHI_ARG_EDGE (scalar_t__,int) ;
 int PHI_NUM_ARGS (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 scalar_t__ analyze_scalar_evolution (struct loop*,scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ compute_overall_effect_of_inner_loop (struct loop*,scalar_t__) ;
 int flow_bb_inside_loop_p (struct loop*,int ) ;
 scalar_t__ follow_ssa_edge_in_rhs (struct loop*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int) ;
 struct loop* loop_containing_stmt (scalar_t__) ;
 scalar_t__ t_false ;
 scalar_t__ t_true ;

__attribute__((used)) static t_bool
follow_ssa_edge_inner_loop_phi (struct loop *outer_loop,
    tree loop_phi_node,
    tree halting_phi,
    tree *evolution_of_loop, int limit)
{
  struct loop *loop = loop_containing_stmt (loop_phi_node);
  tree ev = analyze_scalar_evolution (loop, PHI_RESULT (loop_phi_node));



  if (ev == PHI_RESULT (loop_phi_node))
    {
      t_bool res = t_false;
      int i;

      for (i = 0; i < PHI_NUM_ARGS (loop_phi_node); i++)
 {
   tree arg = PHI_ARG_DEF (loop_phi_node, i);
   basic_block bb;


   bb = PHI_ARG_EDGE (loop_phi_node, i)->src;
   if (!flow_bb_inside_loop_p (loop, bb))
     res = follow_ssa_edge_in_rhs (outer_loop, loop_phi_node,
       arg, halting_phi,
       evolution_of_loop, limit);
   if (res == t_true)
     break;
 }


      if (res == t_true)
 *evolution_of_loop = chrec_dont_know;

      return res;
    }


  ev = compute_overall_effect_of_inner_loop (loop, ev);
  return follow_ssa_edge_in_rhs (outer_loop, loop_phi_node, ev, halting_phi,
     evolution_of_loop, limit);
}
