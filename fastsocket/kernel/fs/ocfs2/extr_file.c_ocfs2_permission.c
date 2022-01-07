
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ENOENT ;
 int generic_permission (struct inode*,int,int ) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_check_acl ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;

int ocfs2_permission(struct inode *inode, int mask)
{
 int ret;

 mlog_entry_void();

 ret = ocfs2_inode_lock(inode, ((void*)0), 0);
 if (ret) {
  if (ret != -ENOENT)
   mlog_errno(ret);
  goto out;
 }

 ret = generic_permission(inode, mask, ocfs2_check_acl);

 ocfs2_inode_unlock(inode, 0);
out:
 mlog_exit(ret);
 return ret;
}
