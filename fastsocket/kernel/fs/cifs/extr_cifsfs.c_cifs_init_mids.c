
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int * cifs_mid_cachep ;
 int * cifs_mid_poolp ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int * mempool_create_slab_pool (int,int *) ;

__attribute__((used)) static int
cifs_init_mids(void)
{
 cifs_mid_cachep = kmem_cache_create("cifs_mpx_ids",
         sizeof(struct mid_q_entry), 0,
         SLAB_HWCACHE_ALIGN, ((void*)0));
 if (cifs_mid_cachep == ((void*)0))
  return -ENOMEM;


 cifs_mid_poolp = mempool_create_slab_pool(3, cifs_mid_cachep);
 if (cifs_mid_poolp == ((void*)0)) {
  kmem_cache_destroy(cifs_mid_cachep);
  return -ENOMEM;
 }

 return 0;
}
