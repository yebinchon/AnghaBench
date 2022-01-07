
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmem_zone_t ;


 int kmem_cache_free (int *,void*) ;

__attribute__((used)) static inline void
kmem_zone_free(kmem_zone_t *zone, void *ptr)
{
 kmem_cache_free(zone, ptr);
}
