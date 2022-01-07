
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct msdos_inode_info {struct inode vfs_inode; } ;


 int GFP_NOFS ;
 int fat_inode_cachep ;
 struct msdos_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *fat_alloc_inode(struct super_block *sb)
{
 struct msdos_inode_info *ei;
 ei = kmem_cache_alloc(fat_inode_cachep, GFP_NOFS);
 if (!ei)
  return ((void*)0);
 return &ei->vfs_inode;
}
