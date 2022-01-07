
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {int trans; } ;


 int mempool_free (struct netfs_trans_dst*,int ) ;
 int netfs_trans_dst_pool ;
 int netfs_trans_put (int ) ;

__attribute__((used)) static void netfs_trans_free_dst(struct netfs_trans_dst *dst)
{
 netfs_trans_put(dst->trans);
 mempool_free(dst, netfs_trans_dst_pool);
}
