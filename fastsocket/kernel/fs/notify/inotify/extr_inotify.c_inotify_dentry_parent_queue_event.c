
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int d_lock; struct inode* d_inode; struct dentry* d_parent; } ;


 int DCACHE_INOTIFY_PARENT_WATCHED ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int inotify_inode_queue_event (struct inode*,int ,int ,char const*,struct inode*) ;
 scalar_t__ inotify_inode_watched (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inotify_dentry_parent_queue_event(struct dentry *dentry, u32 mask,
           u32 cookie, const char *name)
{
 struct dentry *parent;
 struct inode *inode;

 if (!(dentry->d_flags & DCACHE_INOTIFY_PARENT_WATCHED))
  return;

 spin_lock(&dentry->d_lock);
 parent = dentry->d_parent;
 inode = parent->d_inode;

 if (inotify_inode_watched(inode)) {
  dget(parent);
  spin_unlock(&dentry->d_lock);
  inotify_inode_queue_event(inode, mask, cookie, name,
       dentry->d_inode);
  dput(parent);
 } else
  spin_unlock(&dentry->d_lock);
}
