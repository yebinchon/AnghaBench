
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPARISON_CLASS_P (int ) ;
 scalar_t__ MODIFY_EXPR ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;

__attribute__((used)) static bool
ssa_name_defined_by_comparison_p (tree var)
{
  tree def = SSA_NAME_DEF_STMT (var);

  if (TREE_CODE (def) == MODIFY_EXPR)
    {
      tree rhs = TREE_OPERAND (def, 1);
      return COMPARISON_CLASS_P (rhs);
    }

  return 0;
}
