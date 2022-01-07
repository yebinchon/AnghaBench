
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int sb; struct inode* osb_tl_inode; } ;
struct ocfs2_extent_tree {int et_root_bh; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_mutex; int i_sb; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_clusters_to_bytes (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_et_root_journal_access (int *,struct ocfs2_extent_tree*,int ) ;
 int ocfs2_et_update_clusters (struct ocfs2_extent_tree*,int ) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int ocfs2_lock_allocators (struct inode*,struct ocfs2_extent_tree*,int ,int,int *,struct ocfs2_alloc_context**) ;
 int ocfs2_remove_extent (int *,struct ocfs2_extent_tree*,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_remove_extent_credits (int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_truncate_log_append (struct ocfs2_super*,int *,int ,int ) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;
 int vfs_dq_free_space_nodirty (struct inode*,int ) ;

int ocfs2_remove_btree_range(struct inode *inode,
        struct ocfs2_extent_tree *et,
        u32 cpos, u32 phys_cpos, u32 len,
        struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret;
 u64 phys_blkno = ocfs2_clusters_to_blocks(inode->i_sb, phys_cpos);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct inode *tl_inode = osb->osb_tl_inode;
 handle_t *handle;
 struct ocfs2_alloc_context *meta_ac = ((void*)0);

 ret = ocfs2_lock_allocators(inode, et, 0, 1, ((void*)0), &meta_ac);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 mutex_lock(&tl_inode->i_mutex);

 if (ocfs2_truncate_log_needs_flush(osb)) {
  ret = __ocfs2_flush_truncate_log(osb);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }

 handle = ocfs2_start_trans(osb, ocfs2_remove_extent_credits(osb->sb));
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_et_root_journal_access(handle, et,
        OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 vfs_dq_free_space_nodirty(inode,
      ocfs2_clusters_to_bytes(inode->i_sb, len));

 ret = ocfs2_remove_extent(handle, et, cpos, len, meta_ac, dealloc);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ocfs2_et_update_clusters(et, -len);

 ret = ocfs2_journal_dirty(handle, et->et_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_truncate_log_append(osb, handle, phys_blkno, len);
 if (ret)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 mutex_unlock(&tl_inode->i_mutex);

 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);

 return ret;
}
