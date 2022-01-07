
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_bitmap_info {scalar_t__ free_count; } ;
struct buffer_head {scalar_t__ b_data; int b_blocknr; scalar_t__ b_size; } ;


 int BITS_PER_LONG ;
 int reiserfs_error (struct super_block*,char*,char*,int ) ;
 int reiserfs_test_le_bit (int,unsigned long*) ;

void reiserfs_cache_bitmap_metadata(struct super_block *sb,
                                    struct buffer_head *bh,
                                    struct reiserfs_bitmap_info *info)
{
 unsigned long *cur = (unsigned long *)(bh->b_data + bh->b_size);


 if (!reiserfs_test_le_bit(0, (unsigned long *)bh->b_data))
  reiserfs_error(sb, "reiserfs-2025", "bitmap block %lu is "
          "corrupted: first bit must be 1", bh->b_blocknr);

 info->free_count = 0;

 while (--cur >= (unsigned long *)bh->b_data) {
  int i;


  if (*cur == 0)
   info->free_count += BITS_PER_LONG;
  else if (*cur != ~0L)
   for (i = BITS_PER_LONG - 1; i >= 0; i--)
    if (!reiserfs_test_le_bit(i, cur))
     info->free_count++;
 }
}
