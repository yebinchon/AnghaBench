
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_bdi; } ;
struct inode {int i_version; } ;
struct nilfs_inode_info {struct inode vfs_inode; int i_btnode_cache; scalar_t__ i_state; int * i_bh; } ;


 int GFP_NOFS ;
 struct nilfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int nilfs_btnode_cache_init (int *,int ) ;
 int nilfs_inode_cachep ;

struct inode *nilfs_alloc_inode_common(struct the_nilfs *nilfs)
{
 struct nilfs_inode_info *ii;

 ii = kmem_cache_alloc(nilfs_inode_cachep, GFP_NOFS);
 if (!ii)
  return ((void*)0);
 ii->i_bh = ((void*)0);
 ii->i_state = 0;
 ii->vfs_inode.i_version = 1;
 nilfs_btnode_cache_init(&ii->i_btnode_cache, nilfs->ns_bdi);
 return &ii->vfs_inode;
}
