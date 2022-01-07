
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ fs_ablocks; int bitmap_lock; int free_ablocks; void* bitmap; } ;


 int DBG_BITMAP ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 int dprint (int ,char*,scalar_t__,scalar_t__) ;
 int hfs_bitmap_dirty (struct super_block*) ;
 scalar_t__ hfs_find_set_zero_bits (void*,scalar_t__,scalar_t__,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 hfs_vbm_search_free(struct super_block *sb, u32 goal, u32 *num_bits)
{
 void *bitmap;
 u32 pos;


 if (!*num_bits)
  return 0;

 mutex_lock(&HFS_SB(sb)->bitmap_lock);
 bitmap = HFS_SB(sb)->bitmap;

 pos = hfs_find_set_zero_bits(bitmap, HFS_SB(sb)->fs_ablocks, goal, num_bits);
 if (pos >= HFS_SB(sb)->fs_ablocks) {
  if (goal)
   pos = hfs_find_set_zero_bits(bitmap, goal, 0, num_bits);
  if (pos >= HFS_SB(sb)->fs_ablocks) {
   *num_bits = pos = 0;
   goto out;
  }
 }

 dprint(DBG_BITMAP, "alloc_bits: %u,%u\n", pos, *num_bits);
 HFS_SB(sb)->free_ablocks -= *num_bits;
 hfs_bitmap_dirty(sb);
out:
 mutex_unlock(&HFS_SB(sb)->bitmap_lock);
 return pos;
}
