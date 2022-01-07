
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_sb; scalar_t__ i_uid; int i_mutex; int i_gid; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;


 int CAP_CHOWN ;
 int ENOENT ;
 int EPERM ;
 int EXDEV ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int MAY_READ ;
 int S_ISREG (int ) ;
 int capable (int ) ;
 scalar_t__ current_fsuid () ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int in_group_p (int ) ;
 int inode_permission (struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_may_create (struct inode*,struct dentry*) ;
 int ocfs2_reflink (struct dentry*,struct inode*,struct dentry*,int) ;
 int vfs_dq_init (struct inode*) ;

int ocfs2_vfs_reflink(struct dentry *old_dentry, struct inode *dir,
        struct dentry *new_dentry, bool preserve)
{
 struct inode *inode = old_dentry->d_inode;
 int error;

 if (!inode)
  return -ENOENT;

 error = ocfs2_may_create(dir, new_dentry);
 if (error)
  return error;

 if (dir->i_sb != inode->i_sb)
  return -EXDEV;




 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return -EPERM;


 if (!S_ISREG(inode->i_mode))
  return -EPERM;





 if (preserve) {
  if ((current_fsuid() != inode->i_uid) && !capable(CAP_CHOWN))
   return -EPERM;
  if (!in_group_p(inode->i_gid) && !capable(CAP_CHOWN))
   return -EPERM;
 }






 if (!preserve) {
  error = inode_permission(inode, MAY_READ);
  if (error)
   return error;
 }

 mutex_lock(&inode->i_mutex);
 vfs_dq_init(dir);
 error = ocfs2_reflink(old_dentry, dir, new_dentry, preserve);
 mutex_unlock(&inode->i_mutex);
 if (!error)
  fsnotify_create(dir, new_dentry);
 return error;
}
