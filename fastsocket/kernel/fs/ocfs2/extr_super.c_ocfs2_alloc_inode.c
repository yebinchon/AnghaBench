
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ocfs2_inode_info {struct inode vfs_inode; int ip_jinode; } ;


 int GFP_NOFS ;
 int jbd2_journal_init_jbd_inode (int *,struct inode*) ;
 struct ocfs2_inode_info* kmem_cache_alloc (int ,int ) ;
 int ocfs2_inode_cachep ;

__attribute__((used)) static struct inode *ocfs2_alloc_inode(struct super_block *sb)
{
 struct ocfs2_inode_info *oi;

 oi = kmem_cache_alloc(ocfs2_inode_cachep, GFP_NOFS);
 if (!oi)
  return ((void*)0);

 jbd2_journal_init_jbd_inode(&oi->ip_jinode, &oi->vfs_inode);
 return &oi->vfs_inode;
}
