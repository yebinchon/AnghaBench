
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct dentry {int d_flags; struct inode* d_inode; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int AUDIT_TYPE_CHILD_DELETE ;
 int BUG_ON (int) ;
 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_DEADDIR (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int ) ;
 int audit_inode_child (struct inode*,struct dentry*,int ) ;
 scalar_t__ check_sticky (struct inode*,struct inode*) ;
 int inode_permission (struct inode*,int) ;

__attribute__((used)) static int may_delete(struct inode *dir,struct dentry *victim,int isdir)
{
 int error;

 if (!victim->d_inode)
  return -ENOENT;

 BUG_ON(victim->d_parent->d_inode != dir);
 audit_inode_child(dir, victim, AUDIT_TYPE_CHILD_DELETE);

 error = inode_permission(dir, MAY_WRITE | MAY_EXEC);
 if (error)
  return error;
 if (IS_APPEND(dir))
  return -EPERM;
 if (check_sticky(dir, victim->d_inode)||IS_APPEND(victim->d_inode)||
     IS_IMMUTABLE(victim->d_inode) || IS_SWAPFILE(victim->d_inode))
  return -EPERM;
 if (isdir) {
  if (!S_ISDIR(victim->d_inode->i_mode))
   return -ENOTDIR;
  if (IS_ROOT(victim))
   return -EBUSY;
 } else if (S_ISDIR(victim->d_inode->i_mode))
  return -EISDIR;
 if (IS_DEADDIR(dir))
  return -ENOENT;
 if (victim->d_flags & DCACHE_NFSFS_RENAMED)
  return -EBUSY;
 return 0;
}
