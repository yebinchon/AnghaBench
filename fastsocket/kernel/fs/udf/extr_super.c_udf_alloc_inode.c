
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct udf_inode_info {struct inode vfs_inode; scalar_t__ i_strat4096; scalar_t__ i_next_alloc_goal; scalar_t__ i_next_alloc_block; scalar_t__ i_lenExtents; scalar_t__ i_unique; } ;
struct super_block {int dummy; } ;


 int GFP_KERNEL ;
 struct udf_inode_info* kmem_cache_alloc (int ,int ) ;
 int udf_inode_cachep ;

__attribute__((used)) static struct inode *udf_alloc_inode(struct super_block *sb)
{
 struct udf_inode_info *ei;
 ei = kmem_cache_alloc(udf_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);

 ei->i_unique = 0;
 ei->i_lenExtents = 0;
 ei->i_next_alloc_block = 0;
 ei->i_next_alloc_goal = 0;
 ei->i_strat4096 = 0;

 return &ei->vfs_inode;
}
