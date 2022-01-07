
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct nfs_inode {unsigned long flags; unsigned long cache_validity; struct inode vfs_inode; int * nfs4_acl; void* acl_default; void* acl_access; } ;


 int EAGAIN ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int nfs_inode_cachep ;

struct inode *nfs_alloc_inode(struct super_block *sb)
{
 struct nfs_inode *nfsi;
 nfsi = (struct nfs_inode *)kmem_cache_alloc(nfs_inode_cachep, GFP_KERNEL);
 if (!nfsi)
  return ((void*)0);
 nfsi->flags = 0UL;
 nfsi->cache_validity = 0UL;







 return &nfsi->vfs_inode;
}
