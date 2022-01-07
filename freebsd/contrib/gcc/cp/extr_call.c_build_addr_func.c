
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ METHOD_TYPE ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int build_address (int ) ;
 int decay_conversion (int ) ;
 int get_member_function_from_ptrfunc (int *,int ) ;

tree
build_addr_func (tree function)
{
  tree type = TREE_TYPE (function);



  if (TREE_CODE (type) == METHOD_TYPE)
    {
      if (TREE_CODE (function) == OFFSET_REF)
 {
   tree object = build_address (TREE_OPERAND (function, 0));
   return get_member_function_from_ptrfunc (&object,
         TREE_OPERAND (function, 1));
 }
      function = build_address (function);
    }
  else
    function = decay_conversion (function);

  return function;
}
