
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {scalar_t__ header; } ;
typedef scalar_t__ basic_block ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ NULL_DEF_OPERAND_P ;
 scalar_t__ NULL_TREE ;
 scalar_t__ NULL_USE_OPERAND_P ;
 scalar_t__ PHI_NODE ;
 scalar_t__ SINGLE_SSA_DEF_OPERAND (scalar_t__,int ) ;
 scalar_t__ SINGLE_SSA_TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ SSA_NAME_DEF_STMT (scalar_t__) ;
 int SSA_OP_ALL_VIRTUALS ;
 int SSA_OP_DEF ;
 int SSA_OP_USE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int ZERO_SSA_OPERANDS (scalar_t__,int ) ;
 scalar_t__ bb_for_stmt (scalar_t__) ;
 int flow_bb_inside_loop_p (struct loop*,scalar_t__) ;

__attribute__((used)) static tree
chain_of_csts_start (struct loop *loop, tree x)
{
  tree stmt = SSA_NAME_DEF_STMT (x);
  tree use;
  basic_block bb = bb_for_stmt (stmt);

  if (!bb
      || !flow_bb_inside_loop_p (loop, bb))
    return NULL_TREE;

  if (TREE_CODE (stmt) == PHI_NODE)
    {
      if (bb == loop->header)
 return stmt;

      return NULL_TREE;
    }

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return NULL_TREE;

  if (!ZERO_SSA_OPERANDS (stmt, SSA_OP_ALL_VIRTUALS))
    return NULL_TREE;
  if (SINGLE_SSA_DEF_OPERAND (stmt, SSA_OP_DEF) == NULL_DEF_OPERAND_P)
    return NULL_TREE;

  use = SINGLE_SSA_TREE_OPERAND (stmt, SSA_OP_USE);
  if (use == NULL_USE_OPERAND_P)
    return NULL_TREE;

  return chain_of_csts_start (loop, use);
}
