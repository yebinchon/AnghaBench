
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_fsnotify_mask; } ;
struct TYPE_2__ {int name; } ;
struct dentry {int d_flags; TYPE_1__ d_name; struct inode* d_inode; int d_lock; struct dentry* d_parent; } ;
typedef int __u32 ;


 int DCACHE_FSNOTIFY_PARENT_WATCHED ;
 int FSNOTIFY_EVENT_INODE ;
 int FS_EVENT_ON_CHILD ;
 int __fsnotify_update_child_dentry_flags (struct inode*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify (struct inode*,int,struct inode*,int ,int ,int ) ;
 scalar_t__ fsnotify_inode_watches_children (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void __fsnotify_parent(struct dentry *dentry, __u32 mask)
{
 struct dentry *parent;
 struct inode *p_inode;
 bool send = 0;
 bool should_update_children = 0;

 if (!(dentry->d_flags & DCACHE_FSNOTIFY_PARENT_WATCHED))
  return;

 spin_lock(&dentry->d_lock);
 parent = dentry->d_parent;
 p_inode = parent->d_inode;

 if (fsnotify_inode_watches_children(p_inode)) {
  if (p_inode->i_fsnotify_mask & mask) {
   dget(parent);
   send = 1;
  }
 } else {






  dget(parent);
  should_update_children = 1;
 }

 spin_unlock(&dentry->d_lock);

 if (send) {


  mask |= FS_EVENT_ON_CHILD;

  fsnotify(p_inode, mask, dentry->d_inode, FSNOTIFY_EVENT_INODE,
    dentry->d_name.name, 0);
  dput(parent);
 }

 if (unlikely(should_update_children)) {
  __fsnotify_update_child_dentry_flags(p_inode);
  dput(parent);
 }
}
