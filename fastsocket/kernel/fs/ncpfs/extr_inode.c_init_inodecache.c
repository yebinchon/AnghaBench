
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_inode_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;
 int * ncp_inode_cachep ;

__attribute__((used)) static int init_inodecache(void)
{
 ncp_inode_cachep = kmem_cache_create("ncp_inode_cache",
          sizeof(struct ncp_inode_info),
          0, (SLAB_RECLAIM_ACCOUNT|
      SLAB_MEM_SPREAD),
          init_once);
 if (ncp_inode_cachep == ((void*)0))
  return -ENOMEM;
 return 0;
}
