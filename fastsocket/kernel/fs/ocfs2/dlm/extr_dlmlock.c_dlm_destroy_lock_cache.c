
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dlm_lock_cache ;
 int kmem_cache_destroy (scalar_t__) ;

void dlm_destroy_lock_cache(void)
{
 if (dlm_lock_cache)
  kmem_cache_destroy(dlm_lock_cache);
}
