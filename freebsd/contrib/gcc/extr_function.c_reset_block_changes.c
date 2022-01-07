
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ib_boundaries_block; } ;


 int NULL_TREE ;
 int VEC_alloc (int ,int ,int) ;
 int VEC_quick_push (int ,int ,int ) ;
 TYPE_1__* cfun ;
 int gc ;
 int tree ;

void
reset_block_changes (void)
{
  cfun->ib_boundaries_block = VEC_alloc (tree, gc, 100);
  VEC_quick_push (tree, cfun->ib_boundaries_block, NULL_TREE);
}
