
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; int d_inode; struct dentry* d_parent; } ;


 int DCACHE_INOTIFY_PARENT_WATCHED ;
 scalar_t__ inotify_inode_watched (int ) ;

void inotify_d_move(struct dentry *entry)
{
 struct dentry *parent;

 parent = entry->d_parent;
 if (inotify_inode_watched(parent->d_inode))
  entry->d_flags |= DCACHE_INOTIFY_PARENT_WATCHED;
 else
  entry->d_flags &= ~DCACHE_INOTIFY_PARENT_WATCHED;
}
