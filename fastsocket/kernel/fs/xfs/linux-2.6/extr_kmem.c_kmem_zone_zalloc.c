
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;
typedef int kmem_zone_t ;


 int kmem_cache_size (int *) ;
 void* kmem_zone_alloc (int *,int ) ;
 int memset (char*,int ,int ) ;

void *
kmem_zone_zalloc(kmem_zone_t *zone, xfs_km_flags_t flags)
{
 void *ptr;

 ptr = kmem_zone_alloc(zone, flags);
 if (ptr)
  memset((char *)ptr, 0, kmem_cache_size(zone));
 return ptr;
}
