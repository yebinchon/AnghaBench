
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ UNKNOWN_TYPE ;
 scalar_t__ error_mark_node ;
 int namespace_bindings_p () ;
 scalar_t__ pushdecl (scalar_t__) ;

tree
maybe_push_decl (tree decl)
{
  tree type = TREE_TYPE (decl);




  if (decl == error_mark_node
      || (TREE_CODE (decl) != PARM_DECL
   && DECL_CONTEXT (decl) != NULL_TREE


   && TREE_CODE (DECL_CONTEXT (decl)) != NAMESPACE_DECL)
      || (TREE_CODE (decl) == TEMPLATE_DECL && !namespace_bindings_p ())
      || TREE_CODE (type) == UNKNOWN_TYPE



      || (TREE_CODE (decl) == FUNCTION_DECL
   && DECL_TEMPLATE_SPECIALIZATION (decl)))
    return decl;
  else
    return pushdecl (decl);
}
