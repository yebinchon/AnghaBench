
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int next_bb; } ;


 int BB_HEAD (int ) ;
 TYPE_1__* ENTRY_BLOCK_PTR ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 int get_insns () ;
 scalar_t__ n_basic_blocks ;

rtx
entry_of_function (void)
{
  return (n_basic_blocks > NUM_FIXED_BLOCKS ?
   BB_HEAD (ENTRY_BLOCK_PTR->next_bb) : get_insns ());
}
