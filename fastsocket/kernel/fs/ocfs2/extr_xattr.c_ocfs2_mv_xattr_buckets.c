
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_10__ {int h_buffer_credits; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_11__ {TYPE_1__* xh_entries; int xh_num_buckets; } ;
struct TYPE_9__ {int xe_name_hash; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 TYPE_8__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int cpu_to_le16 (int) ;
 int le16_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;
 int ocfs2_cp_xattr_bucket (struct inode*,TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int ocfs2_extend_trans (TYPE_2__*,int) ;
 int ocfs2_read_xattr_bucket (struct ocfs2_xattr_bucket*,scalar_t__) ;
 int ocfs2_xattr_bucket_free (struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_bucket_journal_access (TYPE_2__*,struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (TYPE_2__*,struct ocfs2_xattr_bucket*) ;
 struct ocfs2_xattr_bucket* ocfs2_xattr_bucket_new (struct inode*) ;
 int ocfs2_xattr_buckets_per_cluster (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_mv_xattr_buckets(struct inode *inode, handle_t *handle,
      u64 src_blk, u64 last_blk, u64 to_blk,
      unsigned int start_bucket,
      u32 *first_hash)
{
 int i, ret, credits;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 int blks_per_bucket = ocfs2_blocks_per_xattr_bucket(inode->i_sb);
 int num_buckets = ocfs2_xattr_buckets_per_cluster(osb);
 struct ocfs2_xattr_bucket *old_first, *new_first;

 mlog(0, "mv xattrs from cluster %llu to %llu\n",
      (unsigned long long)last_blk, (unsigned long long)to_blk);

 BUG_ON(start_bucket >= num_buckets);
 if (start_bucket) {
  num_buckets -= start_bucket;
  last_blk += (start_bucket * blks_per_bucket);
 }


 old_first = ocfs2_xattr_bucket_new(inode);

 new_first = ocfs2_xattr_bucket_new(inode);
 if (!old_first || !new_first) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_xattr_bucket(old_first, src_blk);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 credits = ((num_buckets + 1) * blks_per_bucket) +
  handle->h_buffer_credits;
 ret = ocfs2_extend_trans(handle, credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_bucket_journal_access(handle, old_first,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 for (i = 0; i < num_buckets; i++) {
  ret = ocfs2_cp_xattr_bucket(inode, handle,
         last_blk + (i * blks_per_bucket),
         to_blk + (i * blks_per_bucket),
         1);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }






 ret = ocfs2_read_xattr_bucket(new_first, to_blk);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 ret = ocfs2_xattr_bucket_journal_access(handle, new_first,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 le16_add_cpu(&bucket_xh(old_first)->xh_num_buckets, -num_buckets);
 ocfs2_xattr_bucket_journal_dirty(handle, old_first);

 bucket_xh(new_first)->xh_num_buckets = cpu_to_le16(num_buckets);
 ocfs2_xattr_bucket_journal_dirty(handle, new_first);

 if (first_hash)
  *first_hash = le32_to_cpu(bucket_xh(new_first)->xh_entries[0].xe_name_hash);

out:
 ocfs2_xattr_bucket_free(new_first);
 ocfs2_xattr_bucket_free(old_first);
 return ret;
}
