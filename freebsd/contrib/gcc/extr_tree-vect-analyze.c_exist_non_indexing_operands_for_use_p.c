
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int stmt_vec_info ;


 scalar_t__ SSA_NAME ;
 int STMT_VINFO_DATA_REF (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int vinfo_for_stmt (scalar_t__) ;

__attribute__((used)) static bool
exist_non_indexing_operands_for_use_p (tree use, tree stmt)
{
  tree operand;
  stmt_vec_info stmt_info = vinfo_for_stmt (stmt);




  if (!STMT_VINFO_DATA_REF (stmt_info))
    return 1;
  if (TREE_CODE (TREE_OPERAND (stmt, 0)) == SSA_NAME)
    return 0;

  operand = TREE_OPERAND (stmt, 1);

  if (TREE_CODE (operand) != SSA_NAME)
    return 0;

  if (operand == use)
    return 1;

  return 0;
}
