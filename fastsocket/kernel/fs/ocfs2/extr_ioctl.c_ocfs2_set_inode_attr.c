
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {unsigned int ip_attr; } ;
struct inode {int i_mutex; int i_mode; int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int CAP_LINUX_IMMUTABLE ;
 int EACCES ;
 int EPERM ;
 scalar_t__ IS_ERR (int *) ;
 unsigned int OCFS2_APPEND_FL ;
 unsigned int OCFS2_DIRSYNC_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 unsigned int OCFS2_IMMUTABLE_FL ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int capable (int ) ;
 int is_owner_or_cap (struct inode*) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;
 int ocfs2_set_inode_flags (struct inode*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_set_inode_attr(struct inode *inode, unsigned flags,
    unsigned mask)
{
 struct ocfs2_inode_info *ocfs2_inode = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 unsigned oldflags;
 int status;

 mutex_lock(&inode->i_mutex);

 status = ocfs2_inode_lock(inode, &bh, 1);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = -EACCES;
 if (!is_owner_or_cap(inode))
  goto bail_unlock;

 if (!S_ISDIR(inode->i_mode))
  flags &= ~OCFS2_DIRSYNC_FL;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto bail_unlock;
 }

 oldflags = ocfs2_inode->ip_attr;
 flags = flags & mask;
 flags |= oldflags & ~mask;





 status = -EPERM;
 if ((oldflags & OCFS2_IMMUTABLE_FL) || ((flags ^ oldflags) &
  (OCFS2_APPEND_FL | OCFS2_IMMUTABLE_FL))) {
  if (!capable(CAP_LINUX_IMMUTABLE))
   goto bail_unlock;
 }

 ocfs2_inode->ip_attr = flags;
 ocfs2_set_inode_flags(inode);

 status = ocfs2_mark_inode_dirty(handle, inode, bh);
 if (status < 0)
  mlog_errno(status);

 ocfs2_commit_trans(osb, handle);
bail_unlock:
 ocfs2_inode_unlock(inode, 1);
bail:
 mutex_unlock(&inode->i_mutex);

 brelse(bh);

 mlog_exit(status);
 return status;
}
