
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct affine_tree_combination {int dummy; } ;


 scalar_t__ HOST_BITS_PER_WIDE_INT ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int aff_combination_to_tree (struct affine_tree_combination*) ;
 int tree_to_aff_combination (int ,int ,struct affine_tree_combination*) ;

__attribute__((used)) static tree
fold_affine_expr (tree expr)
{
  tree type = TREE_TYPE (expr);
  struct affine_tree_combination comb;

  if (TYPE_PRECISION (type) > HOST_BITS_PER_WIDE_INT)
    return expr;

  tree_to_aff_combination (expr, type, &comb);
  return aff_combination_to_tree (&comb);
}
