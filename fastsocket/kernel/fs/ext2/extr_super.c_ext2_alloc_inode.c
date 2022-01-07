
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_version; } ;
struct ext2_inode_info {struct inode vfs_inode; int * i_block_alloc_info; } ;


 int GFP_KERNEL ;
 int ext2_inode_cachep ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *ext2_alloc_inode(struct super_block *sb)
{
 struct ext2_inode_info *ei;
 ei = (struct ext2_inode_info *)kmem_cache_alloc(ext2_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 ei->i_block_alloc_info = ((void*)0);
 ei->vfs_inode.i_version = 1;
 return &ei->vfs_inode;
}
