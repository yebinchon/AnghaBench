
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int totalram; } ;
struct rds_page_frag {int dummy; } ;
struct rds_ib_incoming {int dummy; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int RDS_FRAG_SIZE ;
 int SLAB_HWCACHE_ALIGN ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (void*) ;
 void* rds_ib_frag_slab ;
 void* rds_ib_incoming_slab ;
 int rds_ib_sysctl_max_recv_allocation ;
 int si_meminfo (struct sysinfo*) ;

int rds_ib_recv_init(void)
{
 struct sysinfo si;
 int ret = -ENOMEM;


 si_meminfo(&si);
 rds_ib_sysctl_max_recv_allocation = si.totalram / 3 * PAGE_SIZE / RDS_FRAG_SIZE;

 rds_ib_incoming_slab = kmem_cache_create("rds_ib_incoming",
     sizeof(struct rds_ib_incoming),
     0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!rds_ib_incoming_slab)
  goto out;

 rds_ib_frag_slab = kmem_cache_create("rds_ib_frag",
     sizeof(struct rds_page_frag),
     0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!rds_ib_frag_slab)
  kmem_cache_destroy(rds_ib_incoming_slab);
 else
  ret = 0;
out:
 return ret;
}
