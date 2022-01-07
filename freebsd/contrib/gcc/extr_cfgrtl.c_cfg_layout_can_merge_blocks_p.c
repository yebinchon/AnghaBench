
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ basic_block ;
struct TYPE_2__ {int flags; } ;


 int BB_END (scalar_t__) ;
 scalar_t__ BB_PARTITION (scalar_t__) ;
 int EDGE_COMPLEX ;
 scalar_t__ ENTRY_BLOCK_PTR ;
 scalar_t__ EXIT_BLOCK_PTR ;
 int JUMP_P (int ) ;
 scalar_t__ onlyjump_p (int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ simplejump_p (int ) ;
 int single_pred_p (scalar_t__) ;
 scalar_t__ single_succ (scalar_t__) ;
 TYPE_1__* single_succ_edge (scalar_t__) ;
 scalar_t__ single_succ_p (scalar_t__) ;

__attribute__((used)) static bool
cfg_layout_can_merge_blocks_p (basic_block a, basic_block b)
{
  if (BB_PARTITION (a) != BB_PARTITION (b))
    return 0;


  return (single_succ_p (a)
   && single_succ (a) == b
   && single_pred_p (b) == 1
   && a != b

   && !(single_succ_edge (a)->flags & EDGE_COMPLEX)
   && a != ENTRY_BLOCK_PTR && b != EXIT_BLOCK_PTR


   && (!JUMP_P (BB_END (a))
       || (reload_completed
    ? simplejump_p (BB_END (a)) : onlyjump_p (BB_END (a)))));
}
