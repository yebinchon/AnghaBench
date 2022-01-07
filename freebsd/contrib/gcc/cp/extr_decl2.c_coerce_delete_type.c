
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ FUNCTION_TYPE ;
 int NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_RAISES_EXCEPTIONS (scalar_t__) ;
 scalar_t__ build_exception_variant (int ,int ) ;
 int build_function_type (int ,scalar_t__) ;
 int error (char*,int ) ;
 int gcc_assert (int) ;
 int ptr_type_node ;
 int same_type_p (int ,int ) ;
 scalar_t__ tree_cons (int ,int ,scalar_t__) ;
 scalar_t__ void_list_node ;
 int void_type_node ;

tree
coerce_delete_type (tree type)
{
  int e = 0;
  tree args = TYPE_ARG_TYPES (type);

  gcc_assert (TREE_CODE (type) == FUNCTION_TYPE);

  if (!same_type_p (TREE_TYPE (type), void_type_node))
    {
      e = 1;
      error ("%<operator delete%> must return type %qT", void_type_node);
    }

  if (!args || args == void_list_node
      || !same_type_p (TREE_VALUE (args), ptr_type_node))
    {
      e = 2;
      if (args && args != void_list_node)
 args = TREE_CHAIN (args);
      error ("%<operator delete%> takes type %qT as first parameter",
      ptr_type_node);
    }
  switch (e)
  {
    case 2:
      args = tree_cons (NULL_TREE, ptr_type_node, args);

    case 1:
      type = build_exception_variant
       (build_function_type (void_type_node, args),
        TYPE_RAISES_EXCEPTIONS (type));

    default:;
  }

  return type;
}
