
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int rds_ib_frag_slab ;
 int rds_ib_incoming_slab ;

void rds_ib_recv_exit(void)
{
 kmem_cache_destroy(rds_ib_incoming_slab);
 kmem_cache_destroy(rds_ib_frag_slab);
}
