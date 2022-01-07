
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_refcount_tree {int rf_ci; int rf_blkno; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int __ocfs2_decrease_refcount (int *,int *,struct buffer_head*,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_get_refcount_block (struct inode*,int *) ;
 int ocfs2_get_refcount_tree (int ,int ,struct ocfs2_refcount_tree**) ;
 int ocfs2_read_refcount_block (int *,int ,struct buffer_head**) ;

int ocfs2_decrease_refcount(struct inode *inode,
       handle_t *handle, u32 cpos, u32 len,
       struct ocfs2_alloc_context *meta_ac,
       struct ocfs2_cached_dealloc_ctxt *dealloc,
       int delete)
{
 int ret;
 u64 ref_blkno;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_tree *tree;

 BUG_ON(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

 ret = ocfs2_get_refcount_block(inode, &ref_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_get_refcount_tree(OCFS2_SB(inode->i_sb), ref_blkno, &tree);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_refcount_block(&tree->rf_ci, tree->rf_blkno,
     &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = __ocfs2_decrease_refcount(handle, &tree->rf_ci, ref_root_bh,
     cpos, len, meta_ac, dealloc, delete);
 if (ret)
  mlog_errno(ret);
out:
 brelse(ref_root_bh);
 return ret;
}
