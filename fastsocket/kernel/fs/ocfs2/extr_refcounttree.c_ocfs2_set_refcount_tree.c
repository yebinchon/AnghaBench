
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_refcount_block {int rf_count; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_lock; } ;
struct ocfs2_dinode {int i_refcount_loc; int i_dyn_features; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_TREE_SET_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int le32_add_cpu (int *,int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_rb (int *,int *,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_set_refcount_tree(struct inode *inode,
       struct buffer_head *di_bh,
       u64 refcount_loc)
{
 int ret;
 handle_t *handle = ((void*)0);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_block *rb;
 struct ocfs2_refcount_tree *ref_tree;

 BUG_ON(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL);

 ret = ocfs2_lock_refcount_tree(osb, refcount_loc, 1,
           &ref_tree, &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 handle = ocfs2_start_trans(osb, OCFS2_REFCOUNT_TREE_SET_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_journal_access_rb(handle, &ref_tree->rf_ci, ref_root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 le32_add_cpu(&rb->rf_count, 1);

 ocfs2_journal_dirty(handle, ref_root_bh);

 spin_lock(&oi->ip_lock);
 oi->ip_dyn_features |= OCFS2_HAS_REFCOUNT_FL;
 di->i_dyn_features = cpu_to_le16(oi->ip_dyn_features);
 di->i_refcount_loc = cpu_to_le64(refcount_loc);
 spin_unlock(&oi->ip_lock);
 ocfs2_journal_dirty(handle, di_bh);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
 brelse(ref_root_bh);

 return ret;
}
