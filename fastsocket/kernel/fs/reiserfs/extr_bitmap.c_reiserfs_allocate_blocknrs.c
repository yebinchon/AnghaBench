
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_8__ {scalar_t__ search_start; int inode; TYPE_3__* th; scalar_t__ preallocate; int formatted_node; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef int b_blocknr_t ;
struct TYPE_10__ {int reserved_blocks; } ;
struct TYPE_9__ {struct super_block* t_super; } ;


 int CARRY_ON ;
 int NO_DISK_SPACE ;
 TYPE_7__* REISERFS_SB (struct super_block*) ;
 scalar_t__ SB_BLOCK_COUNT (struct super_block*) ;
 int SB_FREE_BLOCKS (struct super_block*) ;
 int blocknrs_and_prealloc_arrays_from_search_start (TYPE_1__*,int *,int) ;
 int determine_search_start (TYPE_1__*,int) ;
 int reiserfs_free_block (TYPE_3__*,int ,int ,int) ;
 int use_preallocated_list_if_available (TYPE_1__*,int *,int) ;

int reiserfs_allocate_blocknrs(reiserfs_blocknr_hint_t * hint, b_blocknr_t * new_blocknrs, int amount_needed, int reserved_by_us )

{
 int initial_amount_needed = amount_needed;
 int ret;
 struct super_block *s = hint->th->t_super;


 if (SB_FREE_BLOCKS(s) - REISERFS_SB(s)->reserved_blocks <
     amount_needed - reserved_by_us)
  return NO_DISK_SPACE;






 if (!hint->formatted_node && hint->preallocate) {
  amount_needed = use_preallocated_list_if_available
      (hint, new_blocknrs, amount_needed);
  if (amount_needed == 0)

   return CARRY_ON;
  new_blocknrs += (initial_amount_needed - amount_needed);
 }


 determine_search_start(hint, amount_needed);
 if (hint->search_start >= SB_BLOCK_COUNT(s))
  hint->search_start = SB_BLOCK_COUNT(s) - 1;


 ret = blocknrs_and_prealloc_arrays_from_search_start
     (hint, new_blocknrs, amount_needed);





 if (ret != CARRY_ON) {
  while (amount_needed++ < initial_amount_needed) {
   reiserfs_free_block(hint->th, hint->inode,
         *(--new_blocknrs), 1);
  }
 }
 return ret;
}
