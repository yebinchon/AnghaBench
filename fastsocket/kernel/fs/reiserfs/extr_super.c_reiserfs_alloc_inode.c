
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct reiserfs_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int reiserfs_inode_cachep ;

__attribute__((used)) static struct inode *reiserfs_alloc_inode(struct super_block *sb)
{
 struct reiserfs_inode_info *ei;
 ei = (struct reiserfs_inode_info *)
     kmem_cache_alloc(reiserfs_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 return &ei->vfs_inode;
}
