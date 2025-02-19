
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* th; scalar_t__ prealloc_size; TYPE_2__* inode; scalar_t__ preallocate; int formatted_node; } ;
typedef TYPE_5__ reiserfs_blocknr_hint_t ;
struct TYPE_10__ {int preallocmin; scalar_t__ preallocsize; } ;
struct TYPE_13__ {TYPE_3__ s_alloc_options; } ;
struct TYPE_11__ {int t_super; } ;
struct TYPE_9__ {int i_size; TYPE_1__* i_sb; int i_mode; } ;
struct TYPE_8__ {int s_blocksize; } ;


 int CARRY_ON ;
 TYPE_7__* REISERFS_SB (int ) ;
 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static int determine_prealloc_size(reiserfs_blocknr_hint_t * hint)
{




 hint->prealloc_size = 0;

 if (!hint->formatted_node && hint->preallocate) {
  if (S_ISREG(hint->inode->i_mode)
      && hint->inode->i_size >=
      REISERFS_SB(hint->th->t_super)->s_alloc_options.
      preallocmin * hint->inode->i_sb->s_blocksize)
   hint->prealloc_size =
       REISERFS_SB(hint->th->t_super)->s_alloc_options.
       preallocsize - 1;
 }
 return CARRY_ON;
}
