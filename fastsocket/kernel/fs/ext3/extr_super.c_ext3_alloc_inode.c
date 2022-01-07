
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_version; } ;
struct ext3_inode_info {struct inode vfs_inode; int i_sync_tid; int i_datasync_tid; int * i_block_alloc_info; } ;


 int GFP_NOFS ;
 int atomic_set (int *,int ) ;
 int ext3_inode_cachep ;
 struct ext3_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *ext3_alloc_inode(struct super_block *sb)
{
 struct ext3_inode_info *ei;

 ei = kmem_cache_alloc(ext3_inode_cachep, GFP_NOFS);
 if (!ei)
  return ((void*)0);
 ei->i_block_alloc_info = ((void*)0);
 ei->vfs_inode.i_version = 1;
 atomic_set(&ei->i_datasync_tid, 0);
 atomic_set(&ei->i_sync_tid, 0);
 return &ei->vfs_inode;
}
