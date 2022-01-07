
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;





 scalar_t__ POINTER_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int operand_equal_p (int ,int ,int ) ;
 int size_in_bytes (int ) ;

__attribute__((used)) static bool
okay_pointer_operation (enum tree_code code, tree op0, tree op1)
{
  tree op0type = TYPE_MAIN_VARIANT (TREE_TYPE (op0));
  tree op1type = TYPE_MAIN_VARIANT (TREE_TYPE (op1));
  if (POINTER_TYPE_P (op1type))
    return 0;
  switch (code)
    {
    case 129:
    case 128:
    case 130:

      if (operand_equal_p (size_in_bytes (op0type), op1, 0))
 return 1;


    default:
      return 0;
    }
  return 0;
}
