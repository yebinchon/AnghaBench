
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct btrfs_root {int cache_lock; struct inode* cache_inode; int fs_info; } ;
struct btrfs_path {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* __lookup_free_space_inode (struct btrfs_root*,struct btrfs_path*,int ) ;
 int btrfs_fs_closing (int ) ;
 void* igrab (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *lookup_free_ino_inode(struct btrfs_root *root,
        struct btrfs_path *path)
{
 struct inode *inode = ((void*)0);

 spin_lock(&root->cache_lock);
 if (root->cache_inode)
  inode = igrab(root->cache_inode);
 spin_unlock(&root->cache_lock);
 if (inode)
  return inode;

 inode = __lookup_free_space_inode(root, path, 0);
 if (IS_ERR(inode))
  return inode;

 spin_lock(&root->cache_lock);
 if (!btrfs_fs_closing(root->fs_info))
  root->cache_inode = igrab(inode);
 spin_unlock(&root->cache_lock);

 return inode;
}
