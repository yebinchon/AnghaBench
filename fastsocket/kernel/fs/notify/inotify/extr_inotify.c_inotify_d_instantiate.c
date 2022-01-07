
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_lock; int d_flags; scalar_t__ d_inode; struct dentry* d_parent; } ;


 int DCACHE_INOTIFY_PARENT_WATCHED ;
 scalar_t__ inotify_inode_watched (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inotify_d_instantiate(struct dentry *entry, struct inode *inode)
{
 struct dentry *parent;

 if (!inode)
  return;

 spin_lock(&entry->d_lock);
 parent = entry->d_parent;
 if (parent->d_inode && inotify_inode_watched(parent->d_inode))
  entry->d_flags |= DCACHE_INOTIFY_PARENT_WATCHED;
 spin_unlock(&entry->d_lock);
}
