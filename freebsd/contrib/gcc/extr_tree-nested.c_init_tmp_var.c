
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct nesting_info {int dummy; } ;


 int EXPR_LOCUS (int ) ;
 int MODIFY_EXPR ;
 int SET_EXPR_LOCUS (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TSI_SAME_STMT ;
 int build2 (int ,int ,int ,int ) ;
 int create_tmp_var_for (struct nesting_info*,int ,int *) ;
 int tsi_link_before (int *,int ,int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static tree
init_tmp_var (struct nesting_info *info, tree exp, tree_stmt_iterator *tsi)
{
  tree t, stmt;

  t = create_tmp_var_for (info, TREE_TYPE (exp), ((void*)0));
  stmt = build2 (MODIFY_EXPR, TREE_TYPE (t), t, exp);
  SET_EXPR_LOCUS (stmt, EXPR_LOCUS (tsi_stmt (*tsi)));
  tsi_link_before (tsi, stmt, TSI_SAME_STMT);

  return t;
}
