
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;


 int BSI_SAME_STMT ;
 int bsi_insert_before (int *,scalar_t__,int ) ;
 scalar_t__ force_gimple_operand (scalar_t__,scalar_t__*,int,scalar_t__) ;

tree
force_gimple_operand_bsi (block_stmt_iterator *bsi, tree expr,
     bool simple_p, tree var)
{
  tree stmts;

  expr = force_gimple_operand (expr, &stmts, simple_p, var);
  if (stmts)
    bsi_insert_before (bsi, stmts, BSI_SAME_STMT);

  return expr;
}
