
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dlm_mle_cache ;
 int kmem_cache_destroy (scalar_t__) ;

void dlm_destroy_mle_cache(void)
{
 if (dlm_mle_cache)
  kmem_cache_destroy(dlm_mle_cache);
}
