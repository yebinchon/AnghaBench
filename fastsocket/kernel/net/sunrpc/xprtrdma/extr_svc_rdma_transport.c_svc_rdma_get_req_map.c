
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rdma_req_map {int * frmr; scalar_t__ count; } ;


 int GFP_KERNEL ;
 struct svc_rdma_req_map* kmem_cache_alloc (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int ) ;
 int svc_rdma_map_cachep ;

struct svc_rdma_req_map *svc_rdma_get_req_map(void)
{
 struct svc_rdma_req_map *map;
 while (1) {
  map = kmem_cache_alloc(svc_rdma_map_cachep, GFP_KERNEL);
  if (map)
   break;
  schedule_timeout_uninterruptible(msecs_to_jiffies(500));
 }
 map->count = 0;
 map->frmr = ((void*)0);
 return map;
}
