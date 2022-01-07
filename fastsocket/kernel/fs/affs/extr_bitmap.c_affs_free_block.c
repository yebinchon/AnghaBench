
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {int s_dirt; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {scalar_t__ s_partition_size; scalar_t__ s_reserved; scalar_t__ s_bmap_bits; scalar_t__ s_last_bmap; int s_bmlock; struct buffer_head* s_bmap_bh; struct affs_bm_info* s_bitmap; } ;
struct affs_bm_info {scalar_t__ bm_key; int bm_free; } ;
typedef int __be32 ;


 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 struct buffer_head* affs_bread (struct super_block*,scalar_t__) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_error (struct super_block*,char*,char*,scalar_t__) ;
 int affs_warning (struct super_block*,char*,char*,scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,scalar_t__) ;

void
affs_free_block(struct super_block *sb, u32 block)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);
 struct affs_bm_info *bm;
 struct buffer_head *bh;
 u32 blk, bmap, bit, mask, tmp;
 __be32 *data;

 pr_debug("AFFS: free_block(%u)\n", block);

 if (block > sbi->s_partition_size)
  goto err_range;

 blk = block - sbi->s_reserved;
 bmap = blk / sbi->s_bmap_bits;
 bit = blk % sbi->s_bmap_bits;
 bm = &sbi->s_bitmap[bmap];

 mutex_lock(&sbi->s_bmlock);

 bh = sbi->s_bmap_bh;
 if (sbi->s_last_bmap != bmap) {
  affs_brelse(bh);
  bh = affs_bread(sb, bm->bm_key);
  if (!bh)
   goto err_bh_read;
  sbi->s_bmap_bh = bh;
  sbi->s_last_bmap = bmap;
 }

 mask = 1 << (bit & 31);
 data = (__be32 *)bh->b_data + bit / 32 + 1;


 tmp = be32_to_cpu(*data);
 if (tmp & mask)
  goto err_free;
 *data = cpu_to_be32(tmp | mask);


 tmp = be32_to_cpu(*(__be32 *)bh->b_data);
 *(__be32 *)bh->b_data = cpu_to_be32(tmp - mask);

 mark_buffer_dirty(bh);
 sb->s_dirt = 1;
 bm->bm_free++;

 mutex_unlock(&sbi->s_bmlock);
 return;

err_free:
 affs_warning(sb,"affs_free_block","Trying to free block %u which is already free", block);
 mutex_unlock(&sbi->s_bmlock);
 return;

err_bh_read:
 affs_error(sb,"affs_free_block","Cannot read bitmap block %u", bm->bm_key);
 sbi->s_bmap_bh = ((void*)0);
 sbi->s_last_bmap = ~0;
 mutex_unlock(&sbi->s_bmlock);
 return;

err_range:
 affs_error(sb, "affs_free_block","Block %u outside partition", block);
 return;
}
