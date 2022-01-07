
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;


 int OCFS2_SB (int ) ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 int mlog (int ,char*,unsigned long long,int,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_blocks (int ,int) ;
 int ocfs2_divide_xattr_cluster (struct inode*,int *,scalar_t__,scalar_t__,int*) ;
 int ocfs2_mv_xattr_bucket_cross_cluster (struct inode*,int *,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,scalar_t__,int,int*) ;
 int ocfs2_mv_xattr_buckets (struct inode*,int *,scalar_t__,scalar_t__,scalar_t__,int ,int*) ;
 int ocfs2_xattr_buckets_per_cluster (int ) ;

__attribute__((used)) static int ocfs2_adjust_xattr_cross_cluster(struct inode *inode,
         handle_t *handle,
         struct ocfs2_xattr_bucket *first,
         struct ocfs2_xattr_bucket *target,
         u64 new_blk,
         u32 prev_clusters,
         u32 *v_start,
         int *extend)
{
 int ret;

 mlog(0, "adjust xattrs from cluster %llu len %u to %llu\n",
      (unsigned long long)bucket_blkno(first), prev_clusters,
      (unsigned long long)new_blk);

 if (ocfs2_xattr_buckets_per_cluster(OCFS2_SB(inode->i_sb)) > 1) {
  ret = ocfs2_mv_xattr_bucket_cross_cluster(inode,
         handle,
         first, target,
         new_blk,
         prev_clusters,
         v_start);
  if (ret)
   mlog_errno(ret);
 } else {

  u64 last_blk = bucket_blkno(first) +
   ((prev_clusters - 1) *
    ocfs2_clusters_to_blocks(inode->i_sb, 1));

  if (prev_clusters > 1 && bucket_blkno(target) != last_blk) {
   ret = ocfs2_mv_xattr_buckets(inode, handle,
           bucket_blkno(first),
           last_blk, new_blk, 0,
           v_start);
   if (ret)
    mlog_errno(ret);
  } else {
   ret = ocfs2_divide_xattr_cluster(inode, handle,
        last_blk, new_blk,
        v_start);
   if (ret)
    mlog_errno(ret);

   if ((bucket_blkno(target) == last_blk) && extend)
    *extend = 0;
  }
 }

 return ret;
}
