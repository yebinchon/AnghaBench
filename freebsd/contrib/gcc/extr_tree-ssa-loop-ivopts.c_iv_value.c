
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct iv {int base; int step; } ;


 int MULT_EXPR ;
 int PLUS_EXPR ;
 int TREE_TYPE (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;

__attribute__((used)) static tree
iv_value (struct iv *iv, tree niter)
{
  tree val;
  tree type = TREE_TYPE (iv->base);

  niter = fold_convert (type, niter);
  val = fold_build2 (MULT_EXPR, type, iv->step, niter);

  return fold_build2 (PLUS_EXPR, type, iv->base, val);
}
