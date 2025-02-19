
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct udf_sb_info {int s_alloc_mutex; int s_partition; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {scalar_t__ s_partition_len; } ;
struct udf_bitmap {struct buffer_head** s_block_bitmap; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct spaceBitmapDesc {int dummy; } ;
struct kernel_lb_addr {size_t partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int load_block_bitmap (struct super_block*,struct udf_bitmap*,unsigned long) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udf_add_free_space (struct super_block*,int ,int) ;
 int udf_debug (char*,char,...) ;
 scalar_t__ udf_set_bit (unsigned long,scalar_t__) ;
 int vfs_dq_free_block (struct inode*,int) ;

__attribute__((used)) static void udf_bitmap_free_blocks(struct super_block *sb,
       struct inode *inode,
       struct udf_bitmap *bitmap,
       struct kernel_lb_addr *bloc,
       uint32_t offset,
       uint32_t count)
{
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct buffer_head *bh = ((void*)0);
 struct udf_part_map *partmap;
 unsigned long block;
 unsigned long block_group;
 unsigned long bit;
 unsigned long i;
 int bitmap_nr;
 unsigned long overflow;

 mutex_lock(&sbi->s_alloc_mutex);
 partmap = &sbi->s_partmaps[bloc->partitionReferenceNum];
 if (bloc->logicalBlockNum < 0 ||
     (bloc->logicalBlockNum + count) >
  partmap->s_partition_len) {
  udf_debug("%d < %d || %d + %d > %d\n",
     bloc->logicalBlockNum, 0, bloc->logicalBlockNum,
     count, partmap->s_partition_len);
  goto error_return;
 }

 block = bloc->logicalBlockNum + offset +
  (sizeof(struct spaceBitmapDesc) << 3);

 do {
  overflow = 0;
  block_group = block >> (sb->s_blocksize_bits + 3);
  bit = block % (sb->s_blocksize << 3);




  if (bit + count > (sb->s_blocksize << 3)) {
   overflow = bit + count - (sb->s_blocksize << 3);
   count -= overflow;
  }
  bitmap_nr = load_block_bitmap(sb, bitmap, block_group);
  if (bitmap_nr < 0)
   goto error_return;

  bh = bitmap->s_block_bitmap[bitmap_nr];
  for (i = 0; i < count; i++) {
   if (udf_set_bit(bit + i, bh->b_data)) {
    udf_debug("bit %ld already set\n", bit + i);
    udf_debug("byte=%2x\n",
     ((char *)bh->b_data)[(bit + i) >> 3]);
   } else {
    if (inode)
     vfs_dq_free_block(inode, 1);
    udf_add_free_space(sb, sbi->s_partition, 1);
   }
  }
  mark_buffer_dirty(bh);
  if (overflow) {
   block += count;
   count = overflow;
  }
 } while (overflow);

error_return:
 mutex_unlock(&sbi->s_alloc_mutex);
}
