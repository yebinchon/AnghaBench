
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INFO (int ) ;
 int CLASSTYPE_TI_ARGS (int ) ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ CONST_DECL ;
 scalar_t__ CP_TYPE_CONST_NON_VOLATILE_P (int ) ;
 scalar_t__ DECL_CLASS_SCOPE_P (scalar_t__) ;
 int DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 int DECL_INTEGRAL_CONSTANT_VAR_P (scalar_t__) ;
 int INTEGRAL_OR_ENUMERATION_TYPE_P (int ) ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CONSTANT (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 int mark_used (scalar_t__) ;
 int processing_template_decl ;
 scalar_t__ unshare_expr (scalar_t__) ;
 scalar_t__ uses_template_parms (int ) ;

__attribute__((used)) static tree
constant_value_1 (tree decl, bool integral_p)
{
  while (TREE_CODE (decl) == CONST_DECL
  || (integral_p
      ? DECL_INTEGRAL_CONSTANT_VAR_P (decl)
      : (TREE_CODE (decl) == VAR_DECL
  && CP_TYPE_CONST_NON_VOLATILE_P (TREE_TYPE (decl)))))
    {
      tree init;







      if (DECL_CLASS_SCOPE_P (decl)
   && CLASSTYPE_TEMPLATE_INFO (DECL_CONTEXT (decl))
   && uses_template_parms (CLASSTYPE_TI_ARGS
      (DECL_CONTEXT (decl))))
 {
   ++processing_template_decl;
   init = fold_non_dependent_expr (DECL_INITIAL (decl));
   --processing_template_decl;
 }
      else
 {




   mark_used (decl);
   init = DECL_INITIAL (decl);
 }
      if (init == error_mark_node)
 return decl;
      if (!init
   || !TREE_TYPE (init)
   || (integral_p
       ? !INTEGRAL_OR_ENUMERATION_TYPE_P (TREE_TYPE (init))
       : (!TREE_CONSTANT (init)





   || TREE_CODE (init) == CONSTRUCTOR
   || TREE_CODE (init) == STRING_CST)))
 break;
      decl = unshare_expr (init);
    }
  return decl;
}
