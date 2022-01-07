
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pretty_printer ;




 int const CALL_EXPR ;



 int NIY ;
 int const NON_LVALUE_EXPR ;




 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;

 int dump_function_name (int *,int ) ;
 int dump_generic_node (int *,int ,int ,int ,int) ;
 int gcc_assert (int) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
print_call_name (pretty_printer *buffer, tree node)
{
  tree op0;

  gcc_assert (TREE_CODE (node) == CALL_EXPR);

  op0 = TREE_OPERAND (node, 0);

  if (TREE_CODE (op0) == NON_LVALUE_EXPR)
    op0 = TREE_OPERAND (op0, 0);

  switch (TREE_CODE (op0))
    {
    case 128:
    case 130:
      dump_function_name (buffer, op0);
      break;

    case 137:
    case 133:
    case 132:
      dump_generic_node (buffer, TREE_OPERAND (op0, 0), 0, 0, 0);
      break;

    case 134:
      pp_string (buffer, "(");
      dump_generic_node (buffer, TREE_OPERAND (op0, 0), 0, 0, 0);
      pp_string (buffer, ") ? ");
      dump_generic_node (buffer, TREE_OPERAND (op0, 1), 0, 0, 0);
      pp_string (buffer, " : ");
      dump_generic_node (buffer, TREE_OPERAND (op0, 2), 0, 0, 0);
      break;

    case 135:

      if (TREE_CODE (TREE_OPERAND (op0, 0)) == 133 ||
   TREE_CODE (TREE_OPERAND (op0, 0)) == 128)
 dump_function_name (buffer, TREE_OPERAND (op0, 1));
      else
 dump_generic_node (buffer, TREE_OPERAND (op0, 0), 0, 0, 0);




      break;

    case 136:
      if (TREE_CODE (TREE_OPERAND (op0, 0)) == 128)
 dump_function_name (buffer, TREE_OPERAND (op0, 0));
      else
 dump_generic_node (buffer, op0, 0, 0, 0);
      break;

    case 129:
    case 131:
      dump_generic_node (buffer, op0, 0, 0, 0);
      break;

    default:
      NIY;
    }
}
