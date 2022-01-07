
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 scalar_t__ ocfs2_should_update_atime (struct inode*,struct vfsmount*) ;
 int ocfs2_update_inode_atime (struct inode*,struct buffer_head*) ;

int ocfs2_inode_lock_atime(struct inode *inode,
     struct vfsmount *vfsmnt,
     int *level)
{
 int ret;

 mlog_entry_void();
 ret = ocfs2_inode_lock(inode, ((void*)0), 0);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }





 if (ocfs2_should_update_atime(inode, vfsmnt)) {
  struct buffer_head *bh = ((void*)0);

  ocfs2_inode_unlock(inode, 0);
  ret = ocfs2_inode_lock(inode, &bh, 1);
  if (ret < 0) {
   mlog_errno(ret);
   return ret;
  }
  *level = 1;
  if (ocfs2_should_update_atime(inode, vfsmnt))
   ocfs2_update_inode_atime(inode, bh);
  if (bh)
   brelse(bh);
 } else
  *level = 0;

 mlog_exit(ret);
 return ret;
}
