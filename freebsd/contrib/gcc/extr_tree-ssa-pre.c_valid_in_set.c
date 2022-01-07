
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_set_t ;
typedef int tree ;
typedef int basic_block ;


 int ANTIC_SAFE_LOADS (int ) ;
 int ARRAY_REF ;
 int CALL_EXPR ;
 int COMPONENT_REF ;
 int INDIRECT_REF ;
 int SSA_NAME ;
 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_CODE_CLASS (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_VALUE (int ) ;
 int VALUE_HANDLE ;
 int VALUE_HANDLE_VUSES (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_value_handle (int ) ;
 int is_gimple_min_invariant (int ) ;
 int set_contains_value (int ,int ) ;







 int vuses_dies_in_block_x (int ,int ) ;

__attribute__((used)) static bool
valid_in_set (value_set_t set, tree expr, basic_block block)
{
 tree vh = get_value_handle (expr);
 switch (TREE_CODE_CLASS (TREE_CODE (expr)))
    {
    case 134:
    case 133:
      {
 tree op1 = TREE_OPERAND (expr, 0);
 tree op2 = TREE_OPERAND (expr, 1);
 return set_contains_value (set, op1) && set_contains_value (set, op2);
      }

    case 128:
      {
 tree op1 = TREE_OPERAND (expr, 0);
 return set_contains_value (set, op1);
      }

    case 130:
      {
 if (TREE_CODE (expr) == CALL_EXPR)
   {
     tree op0 = TREE_OPERAND (expr, 0);
     tree arglist = TREE_OPERAND (expr, 1);
     tree op2 = TREE_OPERAND (expr, 2);


     if (!set_contains_value (set, op0)
  || (op2 && !set_contains_value (set, op2)))
       return 0;


     for (; arglist; arglist = TREE_CHAIN (arglist))
       {
  if (!set_contains_value (set, TREE_VALUE (arglist)))
    return 0;
       }
     return !vuses_dies_in_block_x (VALUE_HANDLE_VUSES (vh), block);
   }
 return 0;
      }

    case 129:
      {
 if (TREE_CODE (expr) == INDIRECT_REF
     || TREE_CODE (expr) == COMPONENT_REF
            || TREE_CODE (expr) == ARRAY_REF)
   {
     tree op0 = TREE_OPERAND (expr, 0);
     gcc_assert (is_gimple_min_invariant (op0)
   || TREE_CODE (op0) == VALUE_HANDLE);
     if (!set_contains_value (set, op0))
       return 0;
     if (TREE_CODE (expr) == ARRAY_REF)
       {
  tree op1 = TREE_OPERAND (expr, 1);
  tree op2 = TREE_OPERAND (expr, 2);
  tree op3 = TREE_OPERAND (expr, 3);
  gcc_assert (is_gimple_min_invariant (op1)
              || TREE_CODE (op1) == VALUE_HANDLE);
  if (!set_contains_value (set, op1))
    return 0;
  gcc_assert (!op2 || is_gimple_min_invariant (op2)
              || TREE_CODE (op2) == VALUE_HANDLE);
  if (op2
      && !set_contains_value (set, op2))
    return 0;
  gcc_assert (!op3 || is_gimple_min_invariant (op3)
              || TREE_CODE (op3) == VALUE_HANDLE);
  if (op3
      && !set_contains_value (set, op3))
    return 0;
     }
   return set_contains_value (ANTIC_SAFE_LOADS (block),
         vh)
     || !vuses_dies_in_block_x (VALUE_HANDLE_VUSES (vh),
           block);
   }
      }
      return 0;

    case 131:
      gcc_assert (TREE_CODE (expr) == SSA_NAME);
      return 1;

    case 132:
      return !vuses_dies_in_block_x (VALUE_HANDLE_VUSES (vh), block);

    default:

      gcc_unreachable ();
   }
}
