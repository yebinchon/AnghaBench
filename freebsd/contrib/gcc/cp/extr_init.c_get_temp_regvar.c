
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INIT_EXPR ;
 int add_decl_expr (int ) ;
 int build_modify_expr (int ,int ,int ) ;
 int create_temporary_var (int ) ;
 int finish_expr_stmt (int ) ;

__attribute__((used)) static tree
get_temp_regvar (tree type, tree init)
{
  tree decl;

  decl = create_temporary_var (type);
  add_decl_expr (decl);

  finish_expr_stmt (build_modify_expr (decl, INIT_EXPR, init));

  return decl;
}
