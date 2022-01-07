
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef unsigned long long u16 ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_SB (int ) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_block_to_cluster_group (struct inode*,scalar_t__,scalar_t__*,unsigned long long*) ;
 int ocfs2_blocks_to_clusters (int ,scalar_t__) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,unsigned long long,scalar_t__,unsigned int) ;
 int ocfs2_local_alloc_seen_free_bits (int ,unsigned int) ;

int ocfs2_free_clusters(handle_t *handle,
         struct inode *bitmap_inode,
         struct buffer_head *bitmap_bh,
         u64 start_blk,
         unsigned int num_clusters)
{
 int status;
 u16 bg_start_bit;
 u64 bg_blkno;
 struct ocfs2_dinode *fe;





 mlog_entry_void();



 BUG_ON(start_blk != ocfs2_clusters_to_blocks(bitmap_inode->i_sb, ocfs2_blocks_to_clusters(bitmap_inode->i_sb, start_blk)));

 fe = (struct ocfs2_dinode *) bitmap_bh->b_data;

 ocfs2_block_to_cluster_group(bitmap_inode, start_blk, &bg_blkno,
         &bg_start_bit);

 mlog(0, "want to free %u clusters starting at block %llu\n",
      num_clusters, (unsigned long long)start_blk);
 mlog(0, "bg_blkno = %llu, bg_start_bit = %u\n",
      (unsigned long long)bg_blkno, bg_start_bit);

 status = ocfs2_free_suballoc_bits(handle, bitmap_inode, bitmap_bh,
       bg_start_bit, bg_blkno,
       num_clusters);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 ocfs2_local_alloc_seen_free_bits(OCFS2_SB(bitmap_inode->i_sb),
      num_clusters);

out:
 mlog_exit(status);
 return status;
}
