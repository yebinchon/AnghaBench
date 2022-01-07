
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLETE_OR_VOID_TYPE_P (int ) ;
 int DECL_HAS_VALUE_EXPR_P (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;

__attribute__((used)) static int
mf_decl_eligible_p (tree decl)
{
  return ((TREE_CODE (decl) == VAR_DECL || TREE_CODE (decl) == PARM_DECL)



          && TREE_ADDRESSABLE (decl)

          && COMPLETE_OR_VOID_TYPE_P (TREE_TYPE (decl))

   && !DECL_HAS_VALUE_EXPR_P (decl));
}
