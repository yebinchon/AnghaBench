
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct super_block {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ fs_ablocks; int free_ablocks; int bitmap_lock; int * bitmap; } ;


 int DBG_BITMAP ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 int cpu_to_be32 (int) ;
 int dprint (int ,char*,scalar_t__,scalar_t__) ;
 int hfs_bitmap_dirty (struct super_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hfs_clear_vbm_bits(struct super_block *sb, u16 start, u16 count)
{
 __be32 *curr;
 u32 mask;
 int i, len;


 if (!count)
  return 0;

 dprint(DBG_BITMAP, "clear_bits: %u,%u\n", start, count);

 if ((start + count) > HFS_SB(sb)->fs_ablocks)
  return -2;

 mutex_lock(&HFS_SB(sb)->bitmap_lock);

 curr = HFS_SB(sb)->bitmap + (start / 32);
 len = count;


 i = start % 32;
 if (i) {
  int j = 32 - i;
  mask = 0xffffffffU << j;
  if (j > count) {
   mask |= 0xffffffffU >> (i + count);
   *curr &= cpu_to_be32(mask);
   goto out;
  }
  *curr++ &= cpu_to_be32(mask);
  count -= j;
 }


 while (count >= 32) {
  *curr++ = 0;
  count -= 32;
 }

 if (count) {
  mask = 0xffffffffU >> count;
  *curr &= cpu_to_be32(mask);
 }
out:
 HFS_SB(sb)->free_ablocks += len;
 mutex_unlock(&HFS_SB(sb)->bitmap_lock);
 hfs_bitmap_dirty(sb);

 return 0;
}
