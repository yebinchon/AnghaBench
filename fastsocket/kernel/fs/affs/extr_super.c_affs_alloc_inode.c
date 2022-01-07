
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_version; } ;
struct affs_inode_info {struct inode vfs_inode; scalar_t__ i_pa_cnt; int * i_ext_bh; int * i_lc; } ;


 int GFP_KERNEL ;
 int affs_inode_cachep ;
 struct affs_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *affs_alloc_inode(struct super_block *sb)
{
 struct affs_inode_info *i;

 i = kmem_cache_alloc(affs_inode_cachep, GFP_KERNEL);
 if (!i)
  return ((void*)0);

 i->vfs_inode.i_version = 1;
 i->i_lc = ((void*)0);
 i->i_ext_bh = ((void*)0);
 i->i_pa_cnt = 0;

 return &i->vfs_inode;
}
