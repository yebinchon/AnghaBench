
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ global_namespace ;

bool
is_ancestor (tree root, tree child)
{
  gcc_assert ((TREE_CODE (root) == NAMESPACE_DECL
        || TREE_CODE (root) == FUNCTION_DECL
        || CLASS_TYPE_P (root)));
  gcc_assert ((TREE_CODE (child) == NAMESPACE_DECL
        || CLASS_TYPE_P (child)));


  if (root == global_namespace)
    return 1;

  while (1)
    {

      if (!child)
 return 0;

      if (root == child)
 return 1;

      if (TYPE_P (child))
 child = TYPE_NAME (child);
      child = DECL_CONTEXT (child);
    }
}
