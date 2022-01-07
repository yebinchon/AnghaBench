
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int s_flags; } ;
struct affs_bm_info {scalar_t__ bm_free; } ;
struct TYPE_2__ {int s_bmap_count; int s_bmlock; struct affs_bm_info* s_bitmap; } ;


 TYPE_1__* AFFS_SB (struct super_block*) ;
 int MS_RDONLY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;

u32
affs_count_free_blocks(struct super_block *sb)
{
 struct affs_bm_info *bm;
 u32 free;
 int i;

 pr_debug("AFFS: count_free_blocks()\n");

 if (sb->s_flags & MS_RDONLY)
  return 0;

 mutex_lock(&AFFS_SB(sb)->s_bmlock);

 bm = AFFS_SB(sb)->s_bitmap;
 free = 0;
 for (i = AFFS_SB(sb)->s_bmap_count; i > 0; bm++, i--)
  free += bm->bm_free;

 mutex_unlock(&AFFS_SB(sb)->s_bmlock);

 return free;
}
