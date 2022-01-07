
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ULONG_MAX ;
 int __purge_vmap_area_lazy (unsigned long*,unsigned long*,int ,int ) ;

__attribute__((used)) static void try_purge_vmap_area_lazy(void)
{
 unsigned long start = ULONG_MAX, end = 0;

 __purge_vmap_area_lazy(&start, &end, 0, 0);
}
