
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_RECLAIM_ACCOUNT ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;
 int * nilfs_transaction_cachep ;

int nilfs_init_transaction_cache(void)
{
 nilfs_transaction_cachep =
  kmem_cache_create("nilfs2_transaction_cache",
      sizeof(struct nilfs_transaction_info),
      0, SLAB_RECLAIM_ACCOUNT, ((void*)0));
 return (nilfs_transaction_cachep == ((void*)0)) ? -ENOMEM : 0;
}
