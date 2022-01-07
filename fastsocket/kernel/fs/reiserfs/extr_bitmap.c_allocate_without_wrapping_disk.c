
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int inode; TYPE_2__* th; int block; int formatted_node; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_9__ {int i_prealloc_count; scalar_t__ i_prealloc_block; int i_prealloc_list; } ;
struct TYPE_8__ {int j_prealloc_list; } ;
struct TYPE_7__ {int t_super; } ;


 TYPE_5__* REISERFS_I (int ) ;
 TYPE_4__* SB_JOURNAL (int ) ;
 int list_add (int *,int *) ;
 int scan_bitmap (TYPE_2__*,scalar_t__*,scalar_t__,int,int,int,int ) ;

__attribute__((used)) static inline int allocate_without_wrapping_disk(reiserfs_blocknr_hint_t * hint,
       b_blocknr_t * new_blocknrs,
       b_blocknr_t start,
       b_blocknr_t finish, int min,
       int amount_needed,
       int prealloc_size)
{
 int rest = amount_needed;
 int nr_allocated;

 while (rest > 0 && start <= finish) {
  nr_allocated = scan_bitmap(hint->th, &start, finish, min,
        rest + prealloc_size,
        !hint->formatted_node, hint->block);

  if (nr_allocated == 0)
   break;


  while (rest > 0 && nr_allocated > 0) {
   *new_blocknrs++ = start++;
   rest--;
   nr_allocated--;
  }


  if (nr_allocated > 0) {

   list_add(&REISERFS_I(hint->inode)->i_prealloc_list,
     &SB_JOURNAL(hint->th->t_super)->
     j_prealloc_list);
   REISERFS_I(hint->inode)->i_prealloc_block = start;
   REISERFS_I(hint->inode)->i_prealloc_count =
       nr_allocated;
   break;
  }
 }

 return (amount_needed - rest);
}
