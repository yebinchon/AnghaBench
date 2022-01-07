
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_SUBBLOCKS (scalar_t__) ;
 scalar_t__ BLOCK_VARS (scalar_t__) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (scalar_t__) ;
 int DECL_RTL (scalar_t__) ;
 scalar_t__ DECL_RTL_SET_P (scalar_t__) ;
 scalar_t__ DECL_VALUE_EXPR (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int instantiate_decl (int ) ;
 int instantiate_expr ;
 int walk_tree (scalar_t__*,int ,int *,int *) ;

__attribute__((used)) static void
instantiate_decls_1 (tree let)
{
  tree t;

  for (t = BLOCK_VARS (let); t; t = TREE_CHAIN (t))
    {
      if (DECL_RTL_SET_P (t))
 instantiate_decl (DECL_RTL (t));
      if (TREE_CODE (t) == VAR_DECL && DECL_HAS_VALUE_EXPR_P (t))
 {
   tree v = DECL_VALUE_EXPR (t);
   walk_tree (&v, instantiate_expr, ((void*)0), ((void*)0));
 }
    }


  for (t = BLOCK_SUBBLOCKS (let); t; t = TREE_CHAIN (t))
    instantiate_decls_1 (t);
}
