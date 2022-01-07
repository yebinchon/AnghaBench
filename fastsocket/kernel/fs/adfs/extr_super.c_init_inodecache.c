
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_inode_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int * adfs_inode_cachep ;
 int init_once ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;

__attribute__((used)) static int init_inodecache(void)
{
 adfs_inode_cachep = kmem_cache_create("adfs_inode_cache",
          sizeof(struct adfs_inode_info),
          0, (SLAB_RECLAIM_ACCOUNT|
      SLAB_MEM_SPREAD),
          init_once);
 if (adfs_inode_cachep == ((void*)0))
  return -ENOMEM;
 return 0;
}
