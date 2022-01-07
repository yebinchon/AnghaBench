
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int OCFS2_HAS_XATTR_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int filemap_fdatawait (int ) ;
 int filemap_fdatawrite (int ) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_attach_refcount_tree (struct inode*,struct buffer_head*) ;
 int ocfs2_complete_reflink (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ;
 int ocfs2_create_reflink_node (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_reflink_xattrs (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ;

__attribute__((used)) static int __ocfs2_reflink(struct dentry *old_dentry,
      struct buffer_head *old_bh,
      struct inode *new_inode,
      bool preserve)
{
 int ret;
 struct inode *inode = old_dentry->d_inode;
 struct buffer_head *new_bh = ((void*)0);

 ret = filemap_fdatawrite(inode->i_mapping);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_attach_refcount_tree(inode, old_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 mutex_lock(&new_inode->i_mutex);
 ret = ocfs2_inode_lock(new_inode, &new_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_unlock;
 }

 ret = ocfs2_create_reflink_node(inode, old_bh,
     new_inode, new_bh, preserve);
 if (ret) {
  mlog_errno(ret);
  goto inode_unlock;
 }

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_HAS_XATTR_FL) {
  ret = ocfs2_reflink_xattrs(inode, old_bh,
        new_inode, new_bh,
        preserve);
  if (ret) {
   mlog_errno(ret);
   goto inode_unlock;
  }
 }

 ret = ocfs2_complete_reflink(inode, old_bh,
         new_inode, new_bh, preserve);
 if (ret)
  mlog_errno(ret);

inode_unlock:
 ocfs2_inode_unlock(new_inode, 1);
 brelse(new_bh);
out_unlock:
 mutex_unlock(&new_inode->i_mutex);
out:
 if (!ret) {
  ret = filemap_fdatawait(inode->i_mapping);
  if (ret)
   mlog_errno(ret);
 }
 return ret;
}
