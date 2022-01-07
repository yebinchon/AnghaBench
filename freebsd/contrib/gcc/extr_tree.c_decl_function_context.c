
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK ;
 scalar_t__ BLOCK_SUPERCONTEXT (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_VINDEX (scalar_t__) ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ get_containing_scope (scalar_t__) ;

tree
decl_function_context (tree decl)
{
  tree context;

  if (TREE_CODE (decl) == ERROR_MARK)
    return 0;







  else if (TREE_CODE (decl) == FUNCTION_DECL && DECL_VINDEX (decl))
    context
      = TYPE_MAIN_VARIANT
 (TREE_TYPE (TREE_VALUE (TYPE_ARG_TYPES (TREE_TYPE (decl)))));
  else
    context = DECL_CONTEXT (decl);

  while (context && TREE_CODE (context) != FUNCTION_DECL)
    {
      if (TREE_CODE (context) == BLOCK)
 context = BLOCK_SUPERCONTEXT (context);
      else
 context = get_containing_scope (context);
    }

  return context;
}
