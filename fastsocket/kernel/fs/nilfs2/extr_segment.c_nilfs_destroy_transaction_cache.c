
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int nilfs_transaction_cachep ;

void nilfs_destroy_transaction_cache(void)
{
 kmem_cache_destroy(nilfs_transaction_cachep);
}
