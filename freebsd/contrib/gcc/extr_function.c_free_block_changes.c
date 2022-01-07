
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ib_boundaries_block; } ;


 int VEC_free (int ,int ,int ) ;
 TYPE_1__* cfun ;
 int gc ;
 int tree ;

void
free_block_changes (void)
{
  VEC_free (tree, gc, cfun->ib_boundaries_block);
}
