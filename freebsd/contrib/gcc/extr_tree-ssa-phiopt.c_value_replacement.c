
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_8__ {scalar_t__ dest; } ;


 int COND_EXPR_COND (int ) ;
 scalar_t__ EQ_EXPR ;
 scalar_t__ HONOR_SIGNED_ZEROS (int ) ;
 scalar_t__ NE_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int empty_block_p (scalar_t__) ;
 int extract_true_false_edges_from_block (scalar_t__,TYPE_1__**,TYPE_1__**) ;
 int last_stmt (scalar_t__) ;
 scalar_t__ operand_equal_for_phi_arg_p (int ,int ) ;
 int replace_phi_edge_with_variable (scalar_t__,TYPE_1__*,int ,int ) ;
 TYPE_1__* single_succ_edge (scalar_t__) ;

__attribute__((used)) static bool
value_replacement (basic_block cond_bb, basic_block middle_bb,
     edge e0, edge e1, tree phi,
     tree arg0, tree arg1)
{
  tree cond;
  edge true_edge, false_edge;



  if (HONOR_SIGNED_ZEROS (TYPE_MODE (TREE_TYPE (arg1))))
    return 0;

  if (!empty_block_p (middle_bb))
    return 0;

  cond = COND_EXPR_COND (last_stmt (cond_bb));


  if (TREE_CODE (cond) != NE_EXPR && TREE_CODE (cond) != EQ_EXPR)
    return 0;



  extract_true_false_edges_from_block (cond_bb, &true_edge, &false_edge);
  if ((operand_equal_for_phi_arg_p (arg0, TREE_OPERAND (cond, 0))
       && operand_equal_for_phi_arg_p (arg1, TREE_OPERAND (cond, 1)))
      || (operand_equal_for_phi_arg_p (arg1, TREE_OPERAND (cond, 0))
   && operand_equal_for_phi_arg_p (arg0, TREE_OPERAND (cond, 1))))
    {
      edge e;
      tree arg;




      e = (TREE_CODE (cond) == NE_EXPR ? true_edge : false_edge);





      if (e->dest == middle_bb)
 e = single_succ_edge (e->dest);



      if (e0 == e)
 arg = arg0;
      else
 arg = arg1;

      replace_phi_edge_with_variable (cond_bb, e1, phi, arg);


      return 1;
    }
  return 0;
}
