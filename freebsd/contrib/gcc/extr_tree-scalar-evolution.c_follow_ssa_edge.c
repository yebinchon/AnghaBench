
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int t_bool ;
struct loop {int dummy; } ;



 int NOP_EXPR ;
 int PARAM_SCEV_MAX_EXPR_SIZE ;
 int PARAM_VALUE (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int flow_loop_nested_p (struct loop*,struct loop*) ;
 int follow_ssa_edge_in_condition_phi (struct loop*,int ,int ,int *,int) ;
 int follow_ssa_edge_in_rhs (struct loop*,int ,int ,int ,int *,int) ;
 int follow_ssa_edge_inner_loop_phi (struct loop*,int ,int ,int *,int) ;
 struct loop* loop_containing_stmt (int ) ;
 int loop_phi_node_p (int ) ;
 int t_dont_know ;
 int t_false ;
 int t_true ;

__attribute__((used)) static t_bool
follow_ssa_edge (struct loop *loop, tree def, tree halting_phi,
   tree *evolution_of_loop, int limit)
{
  struct loop *def_loop;

  if (TREE_CODE (def) == NOP_EXPR)
    return t_false;


  if (limit++ > PARAM_VALUE (PARAM_SCEV_MAX_EXPR_SIZE))
    return t_dont_know;

  def_loop = loop_containing_stmt (def);

  switch (TREE_CODE (def))
    {
    case 128:
      if (!loop_phi_node_p (def))




 return follow_ssa_edge_in_condition_phi
   (loop, def, halting_phi, evolution_of_loop, limit);




      if (def == halting_phi)
 return t_true;




      if (def_loop == loop)
 return t_false;


      if (flow_loop_nested_p (loop, def_loop))
 return follow_ssa_edge_inner_loop_phi
   (loop, def, halting_phi, evolution_of_loop, limit);


      return t_false;

    case 129:
      return follow_ssa_edge_in_rhs (loop, def,
         TREE_OPERAND (def, 1),
         halting_phi,
         evolution_of_loop, limit);

    default:



      return t_false;
    }
}
