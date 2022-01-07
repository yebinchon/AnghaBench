
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_inode_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int * coda_inode_cachep ;
 int init_once ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;

int coda_init_inodecache(void)
{
 coda_inode_cachep = kmem_cache_create("coda_inode_cache",
    sizeof(struct coda_inode_info),
    0, SLAB_RECLAIM_ACCOUNT|SLAB_MEM_SPREAD,
    init_once);
 if (coda_inode_cachep == ((void*)0))
  return -ENOMEM;
 return 0;
}
