
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int block_stmt_iterator ;


 int gimplify_build2 (int *,int,int ,int ,int ) ;
 int tree_vec_extract (int *,int ,int ,int ,int ) ;

__attribute__((used)) static tree
do_binop (block_stmt_iterator *bsi, tree inner_type, tree a, tree b,
   tree bitpos, tree bitsize, enum tree_code code)
{
  a = tree_vec_extract (bsi, inner_type, a, bitsize, bitpos);
  b = tree_vec_extract (bsi, inner_type, b, bitsize, bitpos);
  return gimplify_build2 (bsi, code, inner_type, a, b);
}
