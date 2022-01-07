
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct super_block {int dummy; } ;
struct TYPE_13__ {int preallocate; int prealloc_size; TYPE_2__* inode; int formatted_node; TYPE_5__* th; scalar_t__ beg; scalar_t__ search_start; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_15__ {struct super_block* t_super; } ;
struct TYPE_14__ {int i_uid; } ;
struct TYPE_12__ {int i_prealloc_count; } ;


 int CARRY_ON ;
 int NO_DISK_SPACE ;
 int QUOTA_EXCEEDED ;
 int REISERFS_DEBUG_CODE ;
 TYPE_10__* REISERFS_I (TYPE_2__*) ;
 scalar_t__ SB_BLOCK_COUNT (struct super_block*) ;
 int allocate_without_wrapping_disk (TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__,int,int,int) ;
 int determine_prealloc_size (TYPE_1__*) ;
 int reiserfs_debug (struct super_block*,int ,char*,int,int ) ;
 int reiserfs_free_block (TYPE_5__*,TYPE_2__*,scalar_t__,int) ;
 int vfs_dq_alloc_block_nodirty (TYPE_2__*,int) ;
 int vfs_dq_free_block_nodirty (TYPE_2__*,int) ;
 int vfs_dq_prealloc_block_nodirty (TYPE_2__*,int) ;

__attribute__((used)) static inline int blocknrs_and_prealloc_arrays_from_search_start
    (reiserfs_blocknr_hint_t * hint, b_blocknr_t * new_blocknrs,
     int amount_needed) {
 struct super_block *s = hint->th->t_super;
 b_blocknr_t start = hint->search_start;
 b_blocknr_t finish = SB_BLOCK_COUNT(s) - 1;
 int passno = 0;
 int nr_allocated = 0;

 determine_prealloc_size(hint);
 if (!hint->formatted_node) {
  int quota_ret;





  quota_ret =
      vfs_dq_alloc_block_nodirty(hint->inode, amount_needed);
  if (quota_ret)
   return QUOTA_EXCEEDED;
  if (hint->preallocate && hint->prealloc_size) {





   quota_ret = vfs_dq_prealloc_block_nodirty(hint->inode,
        hint->prealloc_size);
   if (quota_ret)
    hint->preallocate = hint->prealloc_size = 0;
  }

 }

 do {
  switch (passno++) {
  case 0:
   start = hint->search_start;
   finish = SB_BLOCK_COUNT(s) - 1;
   break;
  case 1:
   start = hint->beg;
   finish = hint->search_start;
   break;
  case 2:
   start = 0;
   finish = hint->beg;
   break;
  default:

   if (!hint->formatted_node) {
    vfs_dq_free_block_nodirty(hint->inode,
     amount_needed + hint->prealloc_size -
     nr_allocated);
   }
   while (nr_allocated--)
    reiserfs_free_block(hint->th, hint->inode,
          new_blocknrs[nr_allocated],
          !hint->formatted_node);

   return NO_DISK_SPACE;
  }
 } while ((nr_allocated += allocate_without_wrapping_disk(hint,
         new_blocknrs +
         nr_allocated,
         start, finish,
         1,
         amount_needed -
         nr_allocated,
         hint->
         prealloc_size))
   < amount_needed);
 if (!hint->formatted_node &&
     amount_needed + hint->prealloc_size >
     nr_allocated + REISERFS_I(hint->inode)->i_prealloc_count) {
  vfs_dq_free_block_nodirty(hint->inode, amount_needed +
      hint->prealloc_size - nr_allocated -
      REISERFS_I(hint->inode)->
      i_prealloc_count);
 }

 return CARRY_ON;
}
