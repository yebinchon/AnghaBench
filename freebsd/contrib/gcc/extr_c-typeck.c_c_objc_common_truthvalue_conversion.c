
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int c_common_truthvalue_conversion (int ) ;
 int error (char*) ;
 int error_mark_node ;
 int gcc_unreachable () ;

tree
c_objc_common_truthvalue_conversion (tree expr)
{
  switch (TREE_CODE (TREE_TYPE (expr)))
    {
    case 131:
      error ("used array that cannot be converted to pointer where scalar is required");
      return error_mark_node;

    case 129:
      error ("used struct type value where scalar is required");
      return error_mark_node;

    case 128:
      error ("used union type value where scalar is required");
      return error_mark_node;

    case 130:
      gcc_unreachable ();

    default:
      break;
    }



  return c_common_truthvalue_conversion (expr);
}
