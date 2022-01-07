
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int percpu; } ;
struct rds_ib_connection {TYPE_1__ i_cache_incs; TYPE_1__ i_cache_frags; } ;


 int free_percpu (int ) ;
 int rds_ib_recv_alloc_cache (TYPE_1__*) ;

int rds_ib_recv_alloc_caches(struct rds_ib_connection *ic)
{
 int ret;

 ret = rds_ib_recv_alloc_cache(&ic->i_cache_incs);
 if (!ret) {
  ret = rds_ib_recv_alloc_cache(&ic->i_cache_frags);
  if (ret)
   free_percpu(ic->i_cache_incs.percpu);
 }

 return ret;
}
