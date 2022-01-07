
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_version; } ;
struct exofs_i_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int exofs_inode_cachep ;
 struct exofs_i_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *exofs_alloc_inode(struct super_block *sb)
{
 struct exofs_i_info *oi;

 oi = kmem_cache_alloc(exofs_inode_cachep, GFP_KERNEL);
 if (!oi)
  return ((void*)0);

 oi->vfs_inode.i_version = 1;
 return &oi->vfs_inode;
}
