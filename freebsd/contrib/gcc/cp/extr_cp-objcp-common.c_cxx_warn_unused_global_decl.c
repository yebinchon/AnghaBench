
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_DECLARED_INLINE_P (int ) ;
 scalar_t__ DECL_IN_SYSTEM_HEADER (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 scalar_t__ VAR_DECL ;

bool
cxx_warn_unused_global_decl (tree decl)
{
  if (TREE_CODE (decl) == FUNCTION_DECL && DECL_DECLARED_INLINE_P (decl))
    return 0;
  if (DECL_IN_SYSTEM_HEADER (decl))
    return 0;


  if (TREE_CODE (decl) == VAR_DECL && TREE_READONLY (decl))
    return 0;

  return 1;
}
