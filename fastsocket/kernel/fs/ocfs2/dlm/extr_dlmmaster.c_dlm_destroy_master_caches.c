
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dlm_lockname_cache ;
 scalar_t__ dlm_lockres_cache ;
 int kmem_cache_destroy (scalar_t__) ;

void dlm_destroy_master_caches(void)
{
 if (dlm_lockname_cache)
  kmem_cache_destroy(dlm_lockname_cache);

 if (dlm_lockres_cache)
  kmem_cache_destroy(dlm_lockres_cache);
}
