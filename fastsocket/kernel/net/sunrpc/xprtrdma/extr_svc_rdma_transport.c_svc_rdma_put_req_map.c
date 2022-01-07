
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rdma_req_map {int dummy; } ;


 int kmem_cache_free (int ,struct svc_rdma_req_map*) ;
 int svc_rdma_map_cachep ;

void svc_rdma_put_req_map(struct svc_rdma_req_map *map)
{
 kmem_cache_free(svc_rdma_map_cachep, map);
}
