
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
struct iv_use {TYPE_1__* iv; } ;
struct iv_cand {int dummy; } ;
struct affine_tree_combination {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int aff_combination_to_tree (struct affine_tree_combination*) ;
 int fold_convert (int ,int ) ;
 int get_computation_aff (struct loop*,struct iv_use*,struct iv_cand*,int ,struct affine_tree_combination*) ;
 int unshare_aff_combination (struct affine_tree_combination*) ;

__attribute__((used)) static tree
get_computation_at (struct loop *loop,
      struct iv_use *use, struct iv_cand *cand, tree at)
{
  struct affine_tree_combination aff;
  tree type = TREE_TYPE (use->iv->base);

  if (!get_computation_aff (loop, use, cand, at, &aff))
    return NULL_TREE;
  unshare_aff_combination (&aff);
  return fold_convert (type, aff_combination_to_tree (&aff));
}
