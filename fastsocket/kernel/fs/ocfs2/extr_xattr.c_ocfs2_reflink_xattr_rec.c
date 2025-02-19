
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef unsigned long long u32 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_reflink_xattr_tree_args {int new_blk_bh; TYPE_1__* reflink; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int new_inode; } ;


 int INODE_CACHE (int ) ;
 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int mlog (int ,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_claim_clusters (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,unsigned long long,unsigned long long*,unsigned long long*) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,unsigned long long) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_init_xattr_tree_extent_tree (struct ocfs2_extent_tree*,int ,int ) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,unsigned long long,scalar_t__,unsigned long long,int ,struct ocfs2_alloc_context*) ;
 int ocfs2_lock_reflink_xattr_rec_allocators (struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,scalar_t__,unsigned long long,int*,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ;
 int ocfs2_reflink_xattr_buckets (int *,scalar_t__,scalar_t__,unsigned long long,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_reflink_xattr_tree_args*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;

__attribute__((used)) static int ocfs2_reflink_xattr_rec(struct inode *inode,
       struct buffer_head *root_bh,
       u64 blkno,
       u32 cpos,
       u32 len,
       void *para)
{
 int ret, credits = 0;
 u32 p_cluster, num_clusters;
 u64 new_blkno;
 handle_t *handle;
 struct ocfs2_reflink_xattr_tree_args *args =
   (struct ocfs2_reflink_xattr_tree_args *)para;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_extent_tree et;

 ocfs2_init_xattr_tree_extent_tree(&et,
       INODE_CACHE(args->reflink->new_inode),
       args->new_blk_bh);

 ret = ocfs2_lock_reflink_xattr_rec_allocators(args, &et, blkno,
            len, &credits,
            &meta_ac, &data_ac);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_claim_clusters(osb, handle, data_ac,
       len, &p_cluster, &num_clusters);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 new_blkno = ocfs2_clusters_to_blocks(osb->sb, p_cluster);

 mlog(0, "reflink xattr buckets %llu to %llu, len %u\n",
      (unsigned long long)blkno, (unsigned long long)new_blkno, len);
 ret = ocfs2_reflink_xattr_buckets(handle, blkno, new_blkno, len,
       meta_ac, data_ac, args);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 mlog(0, "insert new xattr extent rec start %llu len %u to %u\n",
      (unsigned long long)new_blkno, len, cpos);
 ret = ocfs2_insert_extent(handle, &et, cpos, new_blkno,
      len, 0, meta_ac);
 if (ret)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(osb, handle);

out:
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);
 if (data_ac)
  ocfs2_free_alloc_context(data_ac);
 return ret;
}
