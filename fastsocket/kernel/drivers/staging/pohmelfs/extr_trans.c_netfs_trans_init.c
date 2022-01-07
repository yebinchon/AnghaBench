
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {int dummy; } ;


 int ENOMEM ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int mempool_create_slab_pool (int,int ) ;
 int netfs_trans_dst ;
 int netfs_trans_dst_pool ;

int netfs_trans_init(void)
{
 int err = -ENOMEM;

 netfs_trans_dst = kmem_cache_create("netfs_trans_dst", sizeof(struct netfs_trans_dst),
   0, 0, ((void*)0));
 if (!netfs_trans_dst)
  goto err_out_exit;

 netfs_trans_dst_pool = mempool_create_slab_pool(256, netfs_trans_dst);
 if (!netfs_trans_dst_pool)
  goto err_out_free;

 return 0;

err_out_free:
 kmem_cache_destroy(netfs_trans_dst);
err_out_exit:
 return err;
}
