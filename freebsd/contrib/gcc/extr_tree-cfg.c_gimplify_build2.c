
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int block_stmt_iterator ;


 int STRIP_NOPS (int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int gimplify_val (int *,int ,int ) ;

tree
gimplify_build2 (block_stmt_iterator *bsi, enum tree_code code,
   tree type, tree a, tree b)
{
  tree ret;

  ret = fold_build2 (code, type, a, b);
  STRIP_NOPS (ret);

  return gimplify_val (bsi, type, ret);
}
