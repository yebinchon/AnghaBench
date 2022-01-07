
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmem_zone_t ;


 int * kmem_cache_create (char*,int,int ,int ,int *) ;

__attribute__((used)) static inline kmem_zone_t *
kmem_zone_init(int size, char *zone_name)
{
 return kmem_cache_create(zone_name, size, 0, 0, ((void*)0));
}
