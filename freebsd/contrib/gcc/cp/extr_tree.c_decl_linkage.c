
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int linkage_kind ;


 scalar_t__ CONST_DECL ;
 scalar_t__ DECL_COMDAT (int ) ;
 scalar_t__ DECL_LANG_SPECIFIC (int ) ;
 int DECL_NAME (int ) ;
 int DECL_THIS_STATIC (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_DECL ;
 int TYPE_NAME (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ decl_function_context (int ) ;
 int lk_external ;
 int lk_internal ;
 int lk_none ;

linkage_kind
decl_linkage (tree decl)
{
  if (!DECL_NAME (decl))
    return lk_none;


  if (TREE_PUBLIC (decl))
    return lk_external;

  if (TREE_CODE (decl) == NAMESPACE_DECL)
    return lk_external;



  if (TREE_CODE (decl) == CONST_DECL)
    return decl_linkage (TYPE_NAME (TREE_TYPE (decl)));






  if (TREE_CODE (decl) != TYPE_DECL && DECL_LANG_SPECIFIC (decl)
      && DECL_COMDAT (decl))
    return lk_external;



  if (decl_function_context (decl))
    return lk_none;




  if (TREE_CODE (decl) == TYPE_DECL
      || ((TREE_CODE (decl) == VAR_DECL || TREE_CODE (decl) == FUNCTION_DECL)
   && !DECL_THIS_STATIC (decl)))
    return lk_external;


  return lk_internal;
}
