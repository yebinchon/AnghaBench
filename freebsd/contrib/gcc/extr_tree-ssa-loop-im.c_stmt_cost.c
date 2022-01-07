
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BUILT_IN_CONSTANT_P ;
 int BUILT_IN_NORMAL ;



 int COND_EXPR ;
 int DECL_BUILT_IN_CLASS (int ) ;
 int DECL_FUNCTION_CODE (int ) ;



 int LIM_EXPENSIVE ;




 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int get_callee_fndecl (int ) ;
 scalar_t__ stmt_references_memory_p (int ) ;

__attribute__((used)) static unsigned
stmt_cost (tree stmt)
{
  tree rhs;
  unsigned cost = 1;


  if (TREE_CODE (stmt) == COND_EXPR)
    return LIM_EXPENSIVE;

  rhs = TREE_OPERAND (stmt, 1);


  if (stmt_references_memory_p (stmt))
    cost += 20;

  switch (TREE_CODE (rhs))
    {
    case 139:




      rhs = get_callee_fndecl (rhs);
      if (DECL_BUILT_IN_CLASS (rhs) == BUILT_IN_NORMAL
   && DECL_FUNCTION_CODE (rhs) == BUILT_IN_CONSTANT_P)
 return 0;

      cost += 20;
      break;

    case 133:
    case 129:
    case 138:
    case 135:
    case 131:
    case 136:
    case 137:
    case 134:
    case 130:
    case 128:
    case 132:

      cost += 20;
      break;

    default:
      break;
    }

  return cost;
}
