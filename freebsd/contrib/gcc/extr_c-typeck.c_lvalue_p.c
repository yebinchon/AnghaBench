
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int ARRAY_TYPE ;




 int FUNCTION_TYPE ;


 int METHOD_TYPE ;




 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;


__attribute__((used)) static int
lvalue_p (tree ref)
{
  enum tree_code code = TREE_CODE (ref);

  switch (code)
    {
    case 131:
    case 134:
    case 137:
      return lvalue_p (TREE_OPERAND (ref, 0));

    case 136:
    case 129:
      return 1;

    case 133:
    case 139:
    case 128:
    case 132:
    case 130:
    case 135:
      return (TREE_CODE (TREE_TYPE (ref)) != FUNCTION_TYPE
       && TREE_CODE (TREE_TYPE (ref)) != METHOD_TYPE);

    case 138:
      return TREE_CODE (TREE_TYPE (ref)) == ARRAY_TYPE;

    default:
      return 0;
    }
}
