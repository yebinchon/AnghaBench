
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CP_DECL_CONTEXT (int ) ;
 int DECL_NAMESPACE_SCOPE_P (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_P (int ) ;
 scalar_t__ VAR_DECL ;

int
local_variable_p (tree t)
{
  if ((TREE_CODE (t) == VAR_DECL


       && !TYPE_P (CP_DECL_CONTEXT (t))

       && !DECL_NAMESPACE_SCOPE_P (t))
      || (TREE_CODE (t) == PARM_DECL))
    return 1;

  return 0;
}
