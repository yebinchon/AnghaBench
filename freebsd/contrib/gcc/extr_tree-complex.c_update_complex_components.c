
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;


 int BSI_CONTINUE_LINKING ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int bsi_insert_after (int *,scalar_t__,int ) ;
 scalar_t__ set_component_ssa_name (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void
update_complex_components (block_stmt_iterator *bsi, tree stmt, tree r, tree i)
{
  tree lhs = TREE_OPERAND (stmt, 0);
  tree list;

  list = set_component_ssa_name (lhs, 0, r);
  if (list)
    bsi_insert_after (bsi, list, BSI_CONTINUE_LINKING);

  list = set_component_ssa_name (lhs, 1, i);
  if (list)
    bsi_insert_after (bsi, list, BSI_CONTINUE_LINKING);
}
