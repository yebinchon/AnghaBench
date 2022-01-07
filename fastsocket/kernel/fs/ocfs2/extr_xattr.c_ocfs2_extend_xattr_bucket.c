
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_9__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;
struct TYPE_10__ {int xh_num_buckets; } ;


 int BUG_ON (int) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int bucket_blkno (struct ocfs2_xattr_bucket*) ;
 TYPE_8__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,unsigned long long,int) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;
 int ocfs2_cp_xattr_bucket (struct inode*,TYPE_1__*,int,int,int ) ;
 int ocfs2_divide_xattr_bucket (struct inode*,TYPE_1__*,int,int,int *,int ) ;
 int ocfs2_extend_trans (TYPE_1__*,int) ;
 int ocfs2_xattr_bucket_journal_access (TYPE_1__*,struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (TYPE_1__*,struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_buckets_per_cluster (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_extend_xattr_bucket(struct inode *inode,
         handle_t *handle,
         struct ocfs2_xattr_bucket *first,
         u64 target_blk,
         u32 num_clusters)
{
 int ret, credits;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 u16 blk_per_bucket = ocfs2_blocks_per_xattr_bucket(inode->i_sb);
 u64 end_blk;
 u16 new_bucket = le16_to_cpu(bucket_xh(first)->xh_num_buckets);

 mlog(0, "extend xattr bucket in %llu, xattr extend rec starting "
      "from %llu, len = %u\n", (unsigned long long)target_blk,
      (unsigned long long)bucket_blkno(first), num_clusters);


 BUG_ON(new_bucket >=
        (num_clusters * ocfs2_xattr_buckets_per_cluster(osb)));


 end_blk = bucket_blkno(first) + ((new_bucket - 1) * blk_per_bucket);
 credits = (end_blk - target_blk) + (3 * blk_per_bucket) +
    handle->h_buffer_credits;
 ret = ocfs2_extend_trans(handle, credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_bucket_journal_access(handle, first,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 while (end_blk != target_blk) {
  ret = ocfs2_cp_xattr_bucket(inode, handle, end_blk,
         end_blk + blk_per_bucket, 0);
  if (ret)
   goto out;
  end_blk -= blk_per_bucket;
 }


 ret = ocfs2_divide_xattr_bucket(inode, handle, target_blk,
     target_blk + blk_per_bucket, ((void*)0), 0);

 le16_add_cpu(&bucket_xh(first)->xh_num_buckets, 1);
 ocfs2_xattr_bucket_journal_dirty(handle, first);

out:
 return ret;
}
