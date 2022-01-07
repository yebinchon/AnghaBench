
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_refcount_tree {struct ocfs2_caching_info rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_lock; } ;
struct ocfs2_dinode {int i_dyn_features; scalar_t__ i_xattr_loc; scalar_t__ i_refcount_loc; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int) ;
 int le64_to_cpu (scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_lock_refcount_tree (int ,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int * ocfs2_start_trans (int ,int ) ;
 int ocfs2_supports_xattr (int ) ;
 int ocfs2_unlock_refcount_tree (int ,struct ocfs2_refcount_tree*,int) ;
 int ocfs2_xattr_free_block (struct inode*,int ,struct ocfs2_caching_info*,struct buffer_head*) ;
 int ocfs2_xattr_ibody_remove (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_xattr_remove(struct inode *inode, struct buffer_head *di_bh)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_refcount_tree *ref_tree = ((void*)0);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_caching_info *ref_ci = ((void*)0);
 handle_t *handle;
 int ret;

 if (!ocfs2_supports_xattr(OCFS2_SB(inode->i_sb)))
  return 0;

 if (!(oi->ip_dyn_features & OCFS2_HAS_XATTR_FL))
  return 0;

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL) {
  ret = ocfs2_lock_refcount_tree(OCFS2_SB(inode->i_sb),
            le64_to_cpu(di->i_refcount_loc),
            1, &ref_tree, &ref_root_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
  ref_ci = &ref_tree->rf_ci;

 }

 if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
  ret = ocfs2_xattr_ibody_remove(inode, di_bh,
            ref_ci, ref_root_bh);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (di->i_xattr_loc) {
  ret = ocfs2_xattr_free_block(inode,
          le64_to_cpu(di->i_xattr_loc),
          ref_ci, ref_root_bh);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }

 handle = ocfs2_start_trans((OCFS2_SB(inode->i_sb)),
       OCFS2_INODE_UPDATE_CREDITS);
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

 di->i_xattr_loc = 0;

 spin_lock(&oi->ip_lock);
 oi->ip_dyn_features &= ~(OCFS2_INLINE_XATTR_FL | OCFS2_HAS_XATTR_FL);
 di->i_dyn_features = cpu_to_le16(oi->ip_dyn_features);
 spin_unlock(&oi->ip_lock);

 ret = ocfs2_journal_dirty(handle, di_bh);
 if (ret < 0)
  mlog_errno(ret);
out_commit:
 ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out:
 if (ref_tree)
  ocfs2_unlock_refcount_tree(OCFS2_SB(inode->i_sb), ref_tree, 1);
 brelse(ref_root_bh);
 return ret;
}
