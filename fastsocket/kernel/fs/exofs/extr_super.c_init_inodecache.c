
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int exofs_init_once ;
 int * exofs_inode_cachep ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;

__attribute__((used)) static int init_inodecache(void)
{
 exofs_inode_cachep = kmem_cache_create("exofs_inode_cache",
    sizeof(struct exofs_i_info), 0,
    SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD,
    exofs_init_once);
 if (exofs_inode_cachep == ((void*)0))
  return -ENOMEM;
 return 0;
}
