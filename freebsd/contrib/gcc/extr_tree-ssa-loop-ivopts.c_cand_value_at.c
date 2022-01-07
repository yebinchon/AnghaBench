
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
struct iv_cand {TYPE_1__* iv; } ;
struct TYPE_2__ {int step; int base; } ;


 int PLUS_EXPR ;
 int TREE_TYPE (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int iv_value (TYPE_1__*,int ) ;
 scalar_t__ stmt_after_increment (struct loop*,struct iv_cand*,int ) ;

__attribute__((used)) static tree
cand_value_at (struct loop *loop, struct iv_cand *cand, tree at, tree niter)
{
  tree val = iv_value (cand->iv, niter);
  tree type = TREE_TYPE (cand->iv->base);

  if (stmt_after_increment (loop, cand, at))
    val = fold_build2 (PLUS_EXPR, type, val, cand->iv->step);

  return val;
}
