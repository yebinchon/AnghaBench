
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_reflink {int * xattr_reflinked; struct ocfs2_cached_dealloc_ctxt* dealloc; struct buffer_head* ref_root_bh; int * ref_ci; struct buffer_head* new_bh; struct buffer_head* old_bh; struct inode* new_inode; struct inode* old_inode; } ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int i_xattr_loc; int i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_dealloc_has_cluster (struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_init_dealloc_ctxt (struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_lock_refcount_tree (int ,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int ocfs2_read_xattr_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_reflink_xattr_in_block (struct ocfs2_xattr_reflink*,struct buffer_head*) ;
 int ocfs2_reflink_xattr_inline (struct ocfs2_xattr_reflink*) ;
 int * ocfs2_reflink_xattr_no_security ;
 int ocfs2_run_deallocs (int ,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_schedule_truncate_log_flush (int ,int) ;
 int ocfs2_unlock_refcount_tree (int ,struct ocfs2_refcount_tree*,int) ;

int ocfs2_reflink_xattrs(struct inode *old_inode,
    struct buffer_head *old_bh,
    struct inode *new_inode,
    struct buffer_head *new_bh,
    bool preserve_security)
{
 int ret;
 struct ocfs2_xattr_reflink args;
 struct ocfs2_inode_info *oi = OCFS2_I(old_inode);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)old_bh->b_data;
 struct buffer_head *blk_bh = ((void*)0);
 struct ocfs2_cached_dealloc_ctxt dealloc;
 struct ocfs2_refcount_tree *ref_tree;
 struct buffer_head *ref_root_bh = ((void*)0);

 ret = ocfs2_lock_refcount_tree(OCFS2_SB(old_inode->i_sb),
           le64_to_cpu(di->i_refcount_loc),
           1, &ref_tree, &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_init_dealloc_ctxt(&dealloc);

 args.old_inode = old_inode;
 args.new_inode = new_inode;
 args.old_bh = old_bh;
 args.new_bh = new_bh;
 args.ref_ci = &ref_tree->rf_ci;
 args.ref_root_bh = ref_root_bh;
 args.dealloc = &dealloc;
 if (preserve_security)
  args.xattr_reflinked = ((void*)0);
 else
  args.xattr_reflinked = ocfs2_reflink_xattr_no_security;

 if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
  ret = ocfs2_reflink_xattr_inline(&args);
  if (ret) {
   mlog_errno(ret);
   goto out_unlock;
  }
 }

 if (!di->i_xattr_loc)
  goto out_unlock;

 ret = ocfs2_read_xattr_block(old_inode, le64_to_cpu(di->i_xattr_loc),
         &blk_bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_unlock;
 }

 ret = ocfs2_reflink_xattr_in_block(&args, blk_bh);
 if (ret)
  mlog_errno(ret);

 brelse(blk_bh);

out_unlock:
 ocfs2_unlock_refcount_tree(OCFS2_SB(old_inode->i_sb),
       ref_tree, 1);
 brelse(ref_root_bh);

 if (ocfs2_dealloc_has_cluster(&dealloc)) {
  ocfs2_schedule_truncate_log_flush(OCFS2_SB(old_inode->i_sb), 1);
  ocfs2_run_deallocs(OCFS2_SB(old_inode->i_sb), &dealloc);
 }

out:
 return ret;
}
