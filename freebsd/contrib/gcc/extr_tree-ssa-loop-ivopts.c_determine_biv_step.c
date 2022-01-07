
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
struct TYPE_4__ {int step; } ;
typedef TYPE_1__ affine_iv ;
struct TYPE_5__ {struct loop* loop_father; } ;


 int NULL_TREE ;
 int PHI_RESULT (int ) ;
 TYPE_3__* bb_for_stmt (int ) ;
 int is_gimple_reg (int ) ;
 int simple_iv (struct loop*,int ,int ,TYPE_1__*,int) ;
 scalar_t__ zero_p (int ) ;

__attribute__((used)) static tree
determine_biv_step (tree phi)
{
  struct loop *loop = bb_for_stmt (phi)->loop_father;
  tree name = PHI_RESULT (phi);
  affine_iv iv;

  if (!is_gimple_reg (name))
    return NULL_TREE;

  if (!simple_iv (loop, phi, name, &iv, 1))
    return NULL_TREE;

  return (zero_p (iv.step) ? NULL_TREE : iv.step);
}
