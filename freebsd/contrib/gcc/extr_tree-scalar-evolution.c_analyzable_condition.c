
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COND_EXPR ;







 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

__attribute__((used)) static bool
analyzable_condition (tree expr)
{
  tree condition;

  if (TREE_CODE (expr) != COND_EXPR)
    return 0;

  condition = TREE_OPERAND (expr, 0);

  switch (TREE_CODE (condition))
    {
    case 128:
      return 1;

    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 129:
      return 1;

    default:
      return 0;
    }

  return 0;
}
