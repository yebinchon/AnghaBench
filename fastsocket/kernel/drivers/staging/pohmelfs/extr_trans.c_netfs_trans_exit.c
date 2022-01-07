
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;
 int netfs_trans_dst ;
 int netfs_trans_dst_pool ;

void netfs_trans_exit(void)
{
 mempool_destroy(netfs_trans_dst_pool);
 kmem_cache_destroy(netfs_trans_dst);
}
