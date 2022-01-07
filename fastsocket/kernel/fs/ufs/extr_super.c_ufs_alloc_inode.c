
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_version; } ;
struct ufs_inode_info {struct inode vfs_inode; } ;
struct super_block {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int ufs_inode_cachep ;

__attribute__((used)) static struct inode *ufs_alloc_inode(struct super_block *sb)
{
 struct ufs_inode_info *ei;
 ei = (struct ufs_inode_info *)kmem_cache_alloc(ufs_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 ei->vfs_inode.i_version = 1;
 return &ei->vfs_inode;
}
