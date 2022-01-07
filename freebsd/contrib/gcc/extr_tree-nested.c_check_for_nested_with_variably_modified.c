
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_node {scalar_t__ decl; struct cgraph_node* next_nested; struct cgraph_node* nested; } ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 struct cgraph_node* cgraph_node (scalar_t__) ;
 scalar_t__ variably_modified_type_p (int ,scalar_t__) ;

__attribute__((used)) static bool
check_for_nested_with_variably_modified (tree fndecl, tree orig_fndecl)
{
  struct cgraph_node *cgn = cgraph_node (fndecl);
  tree arg;

  for (cgn = cgn->nested; cgn ; cgn = cgn->next_nested)
    {
      for (arg = DECL_ARGUMENTS (cgn->decl); arg; arg = TREE_CHAIN (arg))
 if (variably_modified_type_p (TREE_TYPE (arg), orig_fndecl))
   return 1;

      if (check_for_nested_with_variably_modified (cgn->decl, orig_fndecl))
 return 1;
    }

  return 0;
}
