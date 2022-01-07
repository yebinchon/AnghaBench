
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (scalar_t__) ;
 int DECL_INCOMING_RTL (scalar_t__) ;
 int DECL_INITIAL (scalar_t__) ;
 int DECL_RTL (scalar_t__) ;
 scalar_t__ DECL_VALUE_EXPR (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int instantiate_decl (int ) ;
 int instantiate_decls_1 (int ) ;
 int instantiate_expr ;
 int walk_tree (scalar_t__*,int ,int *,int *) ;

__attribute__((used)) static void
instantiate_decls (tree fndecl)
{
  tree decl;


  for (decl = DECL_ARGUMENTS (fndecl); decl; decl = TREE_CHAIN (decl))
    {
      instantiate_decl (DECL_RTL (decl));
      instantiate_decl (DECL_INCOMING_RTL (decl));
      if (DECL_HAS_VALUE_EXPR_P (decl))
 {
   tree v = DECL_VALUE_EXPR (decl);
   walk_tree (&v, instantiate_expr, ((void*)0), ((void*)0));
 }
    }


  instantiate_decls_1 (DECL_INITIAL (fndecl));
}
